@PostgreSql
Feature: PostgreSql source- Verify PostgreSql source plugin design time scenarios

  Scenario: To verify PostgreSql source plugin validation with connection and basic details for connectivity
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
    Then Enter input plugin property: "database" with value: "cdf.public"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "outputSchema"
    Then Validate "PostgreSQL" plugin properties
    Then Close the Plugin Properties page

  Scenario: To verify PostgreSql source plugin validation with connection arguments
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter key value pairs for plugin property: "connectionArguments" with values from json: "connectionArgumentsList"
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Enter input plugin property: "database" with value: "cdf.public"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "outputSchema"
    Then Validate "PostgreSQL" plugin properties
    Then Close the Plugin Properties page



  Scenario: To verify PostgreSql source plugin validation with advanced details
    Given Open Datafusion Project to configure pipeline
    When Expand Plugin group in the LHS plugins list: "Source"
    When Select plugin: "PostgreSQL" from the plugins list as: "Source"
    Then Navigate to the properties page of plugin: "PostgreSQL"
    Then Select dropdown plugin property: "select-jdbcPluginName" with option value: "postgresql"
    Then Replace input plugin property: "host" with value: "host" for Credentials and Authorization related fields
    Then Replace input plugin property: "port" with value: "port" for Credentials and Authorization related fields
    Then Replace input plugin property: "user" with value: "username" for Credentials and Authorization related fields
    Then Replace input plugin property: "password" with value: "password" for Credentials and Authorization related fields
    Then Enter key value pairs for plugin property: "connectionArguments" with values from json: "connectionArgumentsList"
    Then Enter input plugin property: "referenceName" with value: "sourceRef"
    Then Enter input plugin property: "database" with value: "cdf.public"
    Then Enter textarea plugin property: "importQuery" with value: "selectQuery"
    Then Replace input plugin property: "connectionTimeout" with value: "timeout"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "outputSchema"
    Then Validate "PostgreSQL" plugin properties
    Then Close the Plugin Properties page
