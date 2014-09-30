<?php
define('DB_SERVER', "${_SERVER["DB_HOST"]}");
define('DB_USERNAME', "${_SERVER["DB_USER"]}");
define('DB_PASSWORD', "${_SERVER["DB_PASS"]}");
define('DB_DATABASE', "${_SERVER["DB_NAME"]}");
define('PASSWORD_SALT', 'VB6kbNLP60TfCGakVqTYaEa2T8oJaJJ0B00g1KnChhDRJnjYi8D8wfFsyemhCH31');
define('ENABLE_NEWSFLOW_OVERLAY', FALSE);
define('EMAIL_DEFAULT_FROM_ADDRESS', 'info@nvtl.com');
define('EMAIL_DEFAULT_FROM_NAME', 'NVTL.com Automated System');
define('FORM_BLOCK_SENDER_EMAIL', EMAIL_DEFAULT_FROM_ADDRESS);
define('CACHE_FRONTEND_OPTIONS', serialize(array('automatic_cleaning_factor' => 0)));?><?php define('DIRNAME_APP_UPDATED', 'concrete5.6.1.2_updater');?>
