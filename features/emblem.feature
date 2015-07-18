Feature: Emblem template pre-compilation

  Scenario: pre-compiles templates
    Given this config file:
      """
      plugins:
        - ember_emblem
      """
    And a file named "app/app.coffee" with:
      """
      #= require_tree ./templates
      """
    And a file named "app/templates/some_template.emblem" with:
      """
      header: h1 Some template
      """
    When I build
    Then the built file "public/assets/app-*.js" must match:
      """
      Ember\.TEMPLATES\["some_template"\]
        \s*=\s*
        Ember\.HTMLBars\.template\(\(function\(
          [\s\S]+
          revision.*Ember@1\.13\.4
      [\s\S]+
      "h1"
        [\s\S]+
        "Some\s+template"
      """
