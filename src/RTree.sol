pragma solidity ^0.8.13;

import {PRBMathSD59x18} from "prb-math/PRBMathSD59x18.sol";
import {PRBMathUD60x18} from "prb-math/PRBMathUD60x18.sol";

/**
 * @notice Implements an R tree that can do bounding box searches. Translated
 * from the javascript https://github.com/mourner/rbush
 *
 * @author Md Abid Sikder
*/
contract RTree {
  using PRBMathSD59x18 for int256;
  using PRBMathUD60x18 for uint256;

  struct BBox {
    int256 minX;
    int256 minY;
    int256 maxX;
    int256 maxY;
  }

  struct Node {
    Node[] children;

    uint256 height;
    bool leaf;
    BBox bbox;
  }

  uint256 private maxEntries;
  uint256 private minEntries;
  Node data; // the root node
}
