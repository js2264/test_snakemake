
configfile: "config.yaml"

rule all:
    input:
        f"{config['output_dir']}/combined.txt"

rule process_input1:
    input:
        f"{config['input_dir']}/input1.txt"
    output:
        f"{config['output_dir']}/processed_input1.txt"
    shell:
        "cat {input} | tr 'a-z' 'A-Z' | tr ' ' '_' > {output}"

rule process_input2:
    input:
        f"{config['input_dir']}/input2.txt"
    output:
        f"{config['output_dir']}/processed_input2.txt"
    shell:
        "cat {input} | tr 'A-Z' 'a-z' > {output}"

rule combine:
    input:
        processed1=f"{config['output_dir']}/processed_input1.txt",
        processed2=f"{config['output_dir']}/processed_input2.txt"
    output:
        f"{config['output_dir']}/combined.txt"
    shell:
        "cat {input.processed1} {input.processed2} > {output}"