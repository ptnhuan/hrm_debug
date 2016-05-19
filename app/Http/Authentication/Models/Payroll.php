<?php  namespace App\Http\Authentication\Models;
/**
 * Class Payroll
 *
 * @author ptnhuan
 */
use App\Http\Authentication\Sentry\Payrolls\Eloquent\Payroll as SentryPayroll;

class Payroll extends SentryPayroll
{
    protected $guarded = ["hrm_payroll_id"];

    protected $fillable = [
                            "hrm_payroll_title",
                            "hrm_payroll_description",
                            "hrm_payroll_time",
                            "protected"
                        ];
} 