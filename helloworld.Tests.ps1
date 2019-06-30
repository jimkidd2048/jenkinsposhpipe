$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "helloworld" {
    It "output Hello Wold" {
        helloworld | Should -BeExactly "Hello World"
    }
}
