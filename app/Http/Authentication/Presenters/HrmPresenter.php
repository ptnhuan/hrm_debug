<?php  namespace App\Http\Authentication\Presenters;
/**
 * Class GroupPresenter
 *
 * @author jacopo beschi jacopo@jacopobeschi.com
 */
use \LaravelAcl\Authentication\Presenters\Traits\PermissionTrait;
use \LaravelAcl\Library\Presenters\AbstractPresenter;

class HrmPresenter extends AbstractPresenter
{
    use PermissionTrait;
} 