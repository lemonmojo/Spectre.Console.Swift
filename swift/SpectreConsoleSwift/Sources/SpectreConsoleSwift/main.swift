import SpectreConsoleKit

try? Spectre_Console_AnsiConsole
    .write(Spectre_Console_Panel(
        Spectre_Console_Table()
            .addColumns([ "Foo", "Bar", "Baz" ].dotNETStringArray())
            .addRow([ "abc", "def", "lol" ].dotNETStringArray())
            .title_extension(.init("A table in a panel".dotNETString(), nil))
    ))
