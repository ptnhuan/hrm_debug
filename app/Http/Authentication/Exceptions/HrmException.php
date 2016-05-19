<?php namespace App\Http\AuExceptions\Exceptions;
/**
 * Class PermissionException
 *
 * @author jacopo beschi jacopo@jacopobeschi.com
 */

use Exception;
use \LaravelAcl\Library\Exceptions\JacopoExceptionsInterface;

class HrmException extends Exception implements JacopoExceptionsInterface {}