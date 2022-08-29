#!/usr/bin/env python3

import json
import sys

KEYWORDS = {"subscript", "repeat"}

def main():
    if len(sys.argv) <= 2:
        print(f"usage: {sys.argv[0]} <JSON metadata file> <Output source file>")
        sys.exit(1)

    metadata_filename = sys.argv[1]
    output_filename = sys.argv[2]

    with open(metadata_filename, "r") as f:
        metadata = json.load(f)

    icon_names = metadata.keys()

    with open(output_filename, "w") as f:
        f.write("import Foundation\n\n")
        f.write("public enum AwesomeIcon: String, CaseIterable {\n")

        for icon_name in sorted(icon_names):
            pascal_case_name = "".join(map(lambda word: word.capitalize(), icon_name.split("-")))
            camel_case_name = f"{pascal_case_name[0].lower()}{pascal_case_name[1:]}"
            enum_name = (
                f"_{camel_case_name}"
                if camel_case_name[0].isdigit()
                else f"`{camel_case_name}`"
                if camel_case_name in KEYWORDS
                else camel_case_name
            )
            f.write(f'    case {enum_name} = "{icon_name}"\n')

        f.write("}")


if __name__ == "__main__":
    main()
