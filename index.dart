// import the core of the framework:
import 'package:objd/core.dart';
import 'package:objd/custom_block.dart';
import 'blocks.dart';

// import the custom pack:
void main(List<String> args) {
  createProject(
    Project(
      name: 'Custom Blocks Template',
      target: "../", // path for where to generate the project
      generate: BlocksTemplate(), // The starting point of generation
    ),
    args,
  );
}
