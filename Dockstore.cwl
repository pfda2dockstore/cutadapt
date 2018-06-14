baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: cutadapt
inputs:
  adapter:
    doc: ''
    inputBinding:
      position: 2
      prefix: --adapter
    type: string
  input:
    doc: ''
    inputBinding:
      position: 1
      prefix: --input
    type: File
label: Cut-Adapt
outputs:
  output:
    doc: ''
    outputBinding:
      glob: output/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/cutadapt:33
s:author:
  class: s:Person
  s:name: quan wan
