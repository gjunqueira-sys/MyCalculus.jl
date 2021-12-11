using MyCalculus
using Documenter

DocMeta.setdocmeta!(MyCalculus, :DocTestSetup, :(using MyCalculus); recursive=true)

makedocs(;
    modules=[MyCalculus],
    authors="Gil Junqueira",
    repo="https://github.com/gjunqueira-sys/MyCalculus.jl/blob/{commit}{path}#{line}",
    sitename="MyCalculus.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://gjunqueira-sys.github.io/MyCalculus.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gjunqueira-sys/MyCalculus.jl",
    devbranch="master",
)
