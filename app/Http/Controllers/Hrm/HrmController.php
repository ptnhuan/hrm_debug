<?php  namespace App\Http\Controllers\Hrm;
/**
 * Class HrmController
 *
 * @author ptnhuan@gmail.com
 */
use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;
use \LaravelAcl\Authentication\Controllers\Controller;
use App\Http\Authentication\Presenters\HrmPresenter;
use \LaravelAcl\Library\Form\FormModel;
use \LaravelAcl\Authentication\Helpers\FormHelper;
use App\Http\Authentication\Models\Payroll;
use \LaravelAcl\Authentication\Exceptions\UserNotFoundException;
use App\Http\Authentication\Validators\PayrollValidator;
use \LaravelAcl\Library\Exceptions\JacopoExceptionsInterface;
use View, Redirect, App, Config;

/**
 * HRM controller
 * @Date: 17/05/2016
 * @Author:
 */
class HrmController extends Controller {

    
    /**
     * Sidebar menu
     * @var type 
     */
    private $sidebar_admin = array(
        "Payrolls" => array('url' =>'/admin/hrm/listpayrolls', 'icon' => '<i class="fa fa-users"></i>'),
        "Logs" => array('url' =>'/admin/hrm/listpayrolls', 'icon' => '<i class="fa fa-users"></i>'),
        "Add payroll" => array('url' =>'/admin/hrm/addpayroll', 'icon' => '<i class="fa fa-users"></i>'),
        
    );
    private $sidebar_user = array(
        
    );
    protected $data = array();


    /**
     * @var App\Http\Authentication\Repository\SentryPayrollRepository
     */
    protected $payroll_repository;
    /**
     * @var App\Http\Authentication\Validators\PayrollValidator
     */
    protected $payroll_validator;
    /**
     * @var FormHelper
     */
    protected $form_model;
    
    protected $config_reader =     NULL;



    /**
     * 
     * @param PayrollValidator $hrm_v
     */
    public function __construct(PayrollValidator $v, FormHelper $fh)
    {
        $this->payroll_repository = App::make('payroll_repository');
        $this->payroll_validator = $v;
        $this->f = new FormModel($this->payroll_validator, $this->payroll_repository);
        $this->form_model = $fh;

        $this->config_reader = App::make('config');
        
        $this->data = array_merge($this->data, array(
            'payrolls_per_page' => $this->config_reader->get('acl_base.payrolls_per_page'),
        ));
    }
    
    /**
     * List of payrolls
     * @param Request $request
     * @return type
     */
    public function listPayrolls(Request $request) {

        $payrolls = $this->payroll_repository->all($request->all());

        $this->data = array_merge($this->data, array(
            'current_page' => $request->request->getInt('page'),
            'payroll_title' => $request->request->get('payroll_title'),
        ));
        return View::make('hrm.admin.list.default')->with([ "payrolls" => $payrolls, 
                                                            "sidebar_items" => $this->sidebar_admin,
                                                            "request" => $request,
                                                            "data" => $this->data
                                                        ]);
    }
    
    /**
     * 
     * @param Request $request
     * @return type
     */
    public function getDashboard(Request $request) {
        
        

        return View::make('hrm.admin.dashboard.default')->with(["sidebar_items" => $this->sidebar_admin]);
    }
    
    
    
    /**
     * Add payroll
     * @param Request $request1
     */
    public function addPayroll(Request $request) {
        $sidebar = array_merge(array(), $this->sidebar_admin);

        $users = $this->user_repository->all($request->except(['page']));
        
        return View::make('hrm.admin.list.default')->with(["users" => $users, "sidebar_items" => $sidebar]);

    }
    
    /**
     * Edit payroll
     */
    public function editPayroll(Request $request) {
        try
        {
            $payroll = $this->payroll_repository->find($request->get('id'));
        }
        catch(UserNotFoundException $e)
        {
            $payroll = new Payroll;
        }
        $sidebar = array_merge(array(), $this->sidebar_admin);
        $presenter = new HrmPresenter($payroll);
        
        return View::make('hrm.admin.edit.default')->with([ "payroll" => $payroll, 
                                                            "sidebar_items" => $sidebar,
                                                            "presenter" => $presenter
                                                        ]);
    }
    
     public function postEditPayroll(Request $request)
    {        
        $id = $request->get('id');
        try
        {
            $input = $request->all();
            $input['hrm_payroll_title'] = $input['name'];
            var_dump($this->f);
            die();
            $obj = $this->f->process($input);
            var_dump($obj);
            die();
        }
        catch(JacopoExceptionsInterface $e)
        {
            $errors = $this->f->getErrors();
            // passing the id incase fails editing an already existing item
            return Redirect::route("hrm.editpayroll", $id ? ["id" => $id]: [])->withInput()->withErrors($errors);
        }
        return Redirect::route('hrm.editpayroll',["id" => $obj->id])->withMessage(Config::get('acl_messages.flash.success.group_edit_success'));
    }
    
    /**
     * Edit payroll
     */
    public function deletePayroll(Request $request) {
        $sidebar = array_merge(array(), $this->sidebar_admin);

        $users = $this->user_repository->all($request->except(['page']));
        
        return View::make('hrm.admin.list.default')->with(["users" => $users, "sidebar_items" => $sidebar]);
    }
    
    
    /**
     * User payrolls
     */
    public function userPayrolls(Request $request) {
        var_dump('userPayrolls');
        die();
        $sidebar = array_merge(array(), $this->sidebar_user);

        $users = $this->user_repository->all($request->except(['page']));
        
        return View::make('hrm.admin.list.default')->with(["users" => $users, "sidebar_items" => $sidebar]);
    }
    
    /**
     * User payroll
     */
    public function userPayroll(Request $request) {
        var_dump('userPayroll');
        die();
        $sidebar = array_merge(array(), $this->sidebar_user);

        $users = $this->user_repository->all($request->except(['page']));
        
        return View::make('hrm.admin.list.default')->with(["users" => $users, "sidebar_items" => $sidebar]);
    }
    
    
   
} 