﻿$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "helloworld" {
    It "output is 11 characters" {
        (helloworld).length | Should -Be 11
    }
    It "output Hello Wold starts with H" {
        (helloworld)[0] | Should -BeExactly "A"
    }
    It "output Hello Wold" {
        helloworld | Should -BeExactly "Hello World"
    }
}
