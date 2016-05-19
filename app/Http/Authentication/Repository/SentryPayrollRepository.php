<?php  namespace App\Http\Authentication\Repository;
/**
 * Class GroupRepository
 *
 * @author jacopo beschi jacopo@jacopobeschi.com
 */
use Illuminate\Database\Eloquent\ModelNotFoundException;
use \LaravelAcl\Library\Repository\Interfaces\BaseRepositoryInterface;
use App\Http\Authentication\Models\Payroll;
use \LaravelAcl\Authentication\Exceptions\UserNotFoundException as NotFoundException;
use App, Event;
use App\Http\Authentication\Sentry\Payrolls\PayrollNotFoundException;

class SentryPayrollRepository implements BaseRepositoryInterface
{
    /**
     * Sentry instance
     * @var
     */
    protected $sentry;

    protected $config_reader;

    public function __construct($config_reader = null)
    {
        $this->sentry = App::make('sentry');
        $this->config_reader = $config_reader ? $config_reader : App::make('config');
    }

    /**
     * Create a new object
     *
     * @return mixed
     */
    public function create(array $data)
    {
        return $this->sentry->createGroup($data);
    }

    /**
     * Update a new object
     *
     * @param       id
     * @param array $data
     * @return mixed
     */
    public function update($id, array $data)
    {
        $obj = $this->find($id);
        Event::fire('repository.updating', [$obj]);
        $obj->update($data);
        return $obj;
    }

    /**
     * Deletes a new object
     *
     * @param $id
     * @return mixed
     */
    public function delete($id)
    {
        $obj = $this->find($id);
        Event::fire('repository.deleting', [$obj]);
        return $obj->delete();
    }

    /**
     * Find a model by his id
     *
     * @param $id
     * @return mixed
     * @throws \LaravelAcl\Authentication\Exceptions\UserNotFoundException
     */
    public function find($id)
    {
        try
        {
            $payroll = $this->sentry->findPayrollById($id);
        }
        catch(PayrollNotFoundException $e)
        {
            throw new NotFoundException;
        }
        return $payroll;
    }

    /**
     * Obtains all models
     *
     * @override
     * @param array $search_filters
     * @return mixed
     */
    public function all(array $search_filters = [])
    {
        $q = new Payroll;
        $q = $this->applySearchFilters($search_filters, $q);

        $results_per_page = $this->config_reader->get('acl_base.payrolls_per_page');
        return $q->paginate($results_per_page);
    }

    /**
     * @param array $search_filters
     * @param       $q
     * @return mixed
     */
    protected function applySearchFilters(array $search_filters, $q)
    {
        if(isset($search_filters['payroll_title']) && $search_filters['payroll_title'] !== '') {
            $q = $q->where('hrm_payroll_title', 'LIKE', "%{$search_filters['payroll_title']}%");
        }
        return $q;
    }
}