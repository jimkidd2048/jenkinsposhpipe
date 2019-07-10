
Describe "pester module tests" {
    It "Pester Module's Major Version is 4 or greater" {
        (get-module pester).version.major | Should -BeGreaterOrEqual 4
    }
}
