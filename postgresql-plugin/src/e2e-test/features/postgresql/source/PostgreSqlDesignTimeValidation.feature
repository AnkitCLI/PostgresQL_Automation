Feature: PostgreSql source- Verify PostgreSql source plugin design time validation scenarios

  Scenario: To verify PostgreSql source plugin validation error message with invalid database
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "invalidDatabase"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Click on the Validate button
    Then Verify that the Plugin is displaying an error message: "errorMessageInvalidSourceDatabase" on the header

  Scenario: To verify PostgreSql source plugin validation error message with invalid import query
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "databaseName"
    Then Enter textarea plugin property: "importQuery" with value: "invalidImportQuery"
    Then Replace input plugin property: "numSplits" with value: "numberOfSplits"
    Then Click on the Validate button
    Then Verify that the Plugin Property: "importQuery" is displaying an in-line error message: "errorMessageInvalidImportQuery"

  Scenario: To verify PostgreSql source plugin validation error message with invalid reference name
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "invalidRef"
    Then Replace input plugin property: "database" with value: "databaseName"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Click on the Validate button
    Then Verify that the Plugin Property: "referenceName" is displaying an in-line error message: "errorMessageMssqlInvalidReferenceName"

  Scenario: To verify PostgreSql source plugin validation error message with blank username
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "databaseName"
    Then Enter textarea plugin property: "importQuery" with value: "invalidImportQuery"
    Then Click on the Validate button
    Then Verify that the Plugin Property: "user" is displaying an in-line error message: "errorMessageBlankUsername"

  Scenario: To verify PostgreSql source plugin validation error message with blank password
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "databaseName"
    Then Enter textarea plugin property: "importQuery" with value: "invalidImportQuery"
    Then Click on the Validate button
    Then Verify that the Plugin is displaying an error message: "errorMessageBlankPassword" on the header

  Scenario: To verify PostgreSql source plugin validation error message when fetch size is changed to zero
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "DatabaseName"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Replace input plugin property: "fetchSize" with value: "zeroValue"
    Then Click on the Validate button
    Then Verify that the Plugin Property: "fetchSize" is displaying an in-line error message: "errorMessageInvalidFetchSize"

  Scenario: To verify PostgreSql source plugin validation error message with number of splits without split by field name
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "DatabaseName"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Replace input plugin property: "numSplits" with value: "numberOfSplits"
    Then Click on the Validate button
    Then Verify that the Plugin Property: "numSplits" is displaying an in-line error message: "errorMessageBlankSplitBy"
    Then Verify that the Plugin Property: "splitBy" is displaying an in-line error message: "errorMessageBlankSplitBy"

  Scenario: To verify PostgreSql source plugin validation error message when number of Split value is changed to zero
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "DatabaseName"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Replace input plugin property: "numSplits" with value: "zeroValue"
    Then Click on the Validate button
    Then Verify that the Plugin Property: "numSplits" is displaying an in-line error message: "errorMessageInvalidNumberOfSplits"

  Scenario: To verify PostgreSql source plugin validation error message when number of Split value is not a number
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "DatabaseName"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Replace input plugin property: "numSplits" with value: "zeroSplits"
    Then Click on the Validate button
    Then Verify that the Plugin Property: "numSplits" is displaying an in-line error message: "errorMessageNumberOfSplitNotNumber"

  Scenario: To verify PostgreSql source plugin validation error message with blank bounding query
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Replace input plugin property: "database" with value: "invalidDatabaseName"
    Then Enter textarea plugin property: "importQuery" with value: "invalidImportQuery"
    Then Click on the Validate button
    Then Verify that the Plugin Property: "boundingQuery" is displaying an in-line error message: "errorMessageBoundingQuery"
    Then Verify that the Plugin Property: "numSplits" is displaying an in-line error message: "errorMessageBoundingQuery"
    Then Verify that the Plugin Property: "importQuery" is displaying an in-line error message: "errorMessageInvalidImportQuery"
