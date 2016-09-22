<?php

// Create a second file called pdo_test.php. This file will:
// Use require to include db_connect.php.
// Echo the PDO connection status

// require 'db_employees.php';
require 'db_connect.php';


echo $dbc->getAttribute(PDO::ATTR_CONNECTION_STATUS) . "\n";