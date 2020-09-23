import 'package:objd/core.dart';
import 'package:objd/custom_block.dart';

class BlocksTemplate extends Widget {
  final blocks = [
    CustomBlock(
      'acid_grass',
      Item(
        Items.chicken_spawn_egg,
        model: 3310001,
        name: TextComponent(
          'Acid Grass',
          color: Color.Green,
          italic: false,
        ),
      ),
      useItemFrame: true,
      block: Blocks.grass_block,
    ),
    CustomBlock(
      'brick',
      Item(
        Items.chicken_spawn_egg,
        model: 3310002,
      ),
      name: 'Petrified Brick',
      tags: ['my_custom_tag'],
      block: Blocks.stone_bricks,
      useItemFrame: true,
    ),
    CustomBlock(
      'ender_brick',
      Item(
        Items.chicken_spawn_egg,
        model: 3310003,
      ),
      name: 'Ender Brick',
      block: Blocks.stone_bricks,
      generatePack: false,
      useItemFrame: true,
      onPlaced: Log('Placed'),
      onBreak: Log('Broken'),
    ),
    CustomBlock(
      'red_brick',
      Item(
        Items.chicken_spawn_egg,
        model: 3310004,
      ),
      blockModel: Item(
        Items.chicken_spawn_egg,
        model: 3310004,
      ),
      name: 'Red Brick',
      block: Block.nbt(Blocks.nether_brick_stairs, states: {'half': 'top'}),
    ),
    CustomBlock(
      'wood',
      Item(
        Items.chicken_spawn_egg,
        model: 3310005,
      ),
      name: 'Wood',
      fire: true,
      block: Blocks.oak_planks,
    ),
  ];

  @override
  Widget generate(Context context) {
    return Pack(
      name: 'custom_blocks',
      files: [
        File(
          'giveall',
          child: For.of(
            blocks.map((b) => Give(Entity.Self(), item: b.getItem())).toList(),
          ),
        )
      ],
      modules: blocks,
    );
  }
}
