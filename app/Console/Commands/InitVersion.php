<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Version;

class InitVersion extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:name';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
    }

    protected function _initVersion()
    {
        $version = [
            '3.0.3.30531' =>	'ERP2.5.1',
            '3.0.4.30930' =>	'ERP2.5.2',
            '3.0.4.40205' =>	'ERP2.5.2 SP3',
            '3.0.5.40326' =>	'ERP2.5.3',
            '3.0.5.51230' =>	'ERP2.5.3SP-安全扫雷',
            '3.0.6.40730' =>	'ERP2.5.4',
            '3.0.7.41027' =>	'ERP2.5.5',
            '3.0.8.50415' =>	'ERP2.5.6',
            '3.0.8.50415' =>	'ERP2.5.6SP1',
            '3.0.8.51103' =>	'ERP2.5.6SP2',
            '3.0.9.60106' =>	'ERP2.5.7',
            '3.0.9.60106' =>	'ERP2.5.7SP1',
            '3.0.9.61101' =>	'ERP2.5.7SP-移动审批',
            '3.0.10.60831' =>	'ERP2.5.8',
            '3.5.1.10430' =>	'ERP3.0.1',
            '3.5.1.10824' =>	'ERP3.0.1SP1',
            '3.5.2.11130' =>	'ERP3.0.2',
            '3.5.2.20310' =>	'ERP3.0.2SP-商业地产',
            '3.5.3.20630' =>	'ERP3.0.3',
            '3.5.3.20813' =>	'ERP3.0.3SP',
            '3.5.4.30415' =>	'ERP3.0.4',
            '3.5.5.30704'=>	'ERP3.0.5',
            '3.5.5.30811' =>	'ERP3.0.5SP1',
            '3.5.5.31114' =>	'ERP3.0.5SP2',
            '3.5.5.40127' =>	'ERP3.0.5SP3',
            '3.5.6.30930' =>	'ERP3.0.5SP-步步高',
            '3.5.6.40213' =>	'ERP3.0.6',
            '3.5.7.40630' =>	'ERP3.0.7',
            '3.5.7.40630' =>	'ERP3.0.7SP1',
            '3.5.8.40830' =>	'ERP3.0.7SP2',
            '3.5.8.40930'=>	'ERP3.0.7SP3',
            '3.5.8.40930' =>	'ERP3.0.7SP4',
            '2.0.11228.0' =>	'ERP25_1128',
            '2.0.11115.0' =>	'ERP25_1115',
            '2.0.20623.0' =>	'ERP25_0623',
        ];
    }
}
