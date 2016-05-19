<?php namespace App\Http\Authentication\Validators;

use Event;
use \LaravelAcl\Library\Validators\AbstractValidator;

class PayrollValidator extends AbstractValidator
{
    protected static $rules = array(
        "hrm_payroll_title" => ["required", "max:255"],
    );

    public function __construct()
    {
        Event::listen('validating', function($input)
        {
            $input['hrm_payroll_title'] = $input['name'];
            
        });
        
    }
} 