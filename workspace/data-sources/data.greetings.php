<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcegreetings extends SectionDatasource{

		public $dsParamROOTELEMENT = 'greetings';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'greeting-text'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Greetings',
				'author' => array(
					'name' => 'Pete Majerle',
					'website' => 'http://bluecube.tklapp.com/symphonylab',
					'email' => 'info@bluecubeassociates.com'),
				'version' => 'Symphony 2.3RC3',
				'release-date' => '2012-05-13T14:15:39+00:00'
			);
		}

		public function getSource(){
			return '1';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
