
Describe "pester module tests" {
    It "Pester Module's Major Version is 4 or greater" {
        (get-module pester).version.major | Should -BeGreaterOrEqual 4
    }
    It "Pester Module's Minor Version is 4 or greater" {
        (get-module pester).version.minor | Should -BeGreaterOrEqual 4
    }
    It "Pester Module's Build Version is 2 or greater" {
        (get-module pester).version.build | Should -BeGreaterOrEqual 2
    }

}
