//
//  UIStackView+hierarchyTests.swift
//
//
//  Created by Dan Hart on 3/8/22.
//

@testable import DHDeclarable
import XCTest

class UIStackView_hierarchyTests: XCTestCase {
    // MARK: - Internal
    func testSimpleHierarchy() {
        let stack = DHDVStack(arrangedSubviews: [
            DHDLabel("Hello").identified("title"),
            DHDVStack(arrangedSubviews: [
                DHDLabel("It is Monday").identified("subtitle"),
            ]).identified("substack"),
        ]).identified("main stack")

        let hierarchyLines = stack.hierarchy.components(separatedBy: "\n")
        XCTAssertEqual(hierarchyLines.count, 7)

        XCTAssertEqual(hierarchyLines[optional: 0], "")
        XCTAssertEqual(hierarchyLines[optional: 1], "[0] UIStackView [")
        XCTAssertEqual(hierarchyLines[optional: 2], "\t[0] DHDLabel \"Hello\"\t")
        XCTAssertEqual(hierarchyLines[optional: 3], "\t[1] DHDVStack [")
        XCTAssertEqual(hierarchyLines[optional: 4], "\t\t[0] DHDLabel \"It is Monday\"")
        XCTAssertEqual(hierarchyLines[optional: 5], "\t]")
        XCTAssertEqual(hierarchyLines[optional: 6], "]")
    }

    func testLongHierarchy() {
        let hierarchy = ViewController().body.asScrollView?.stack.hierarchy
        let expectedHierarchy = "\n[0] UIStackView [\n\t[0] DHDView \"DHDDivider\"\t\n\t[1] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"0\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[2] DHDView \"DHDDivider\"\t\n\t[3] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"1\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[4] DHDView \"DHDDivider\"\t\n\t[5] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"2\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[6] DHDView \"DHDDivider\"\t\n\t[7] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"3\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[8] DHDView \"DHDDivider\"\t\n\t[9] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"4\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[10] DHDView \"DHDDivider\"\t\n\t[11] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"5\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[12] DHDView \"DHDDivider\"\t\n\t[13] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"6\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[14] DHDView \"DHDDivider\"\t\n\t[15] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"7\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[16] DHDView \"DHDDivider\"\t\n\t[17] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"8\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[18] DHDView \"DHDDivider\"\t\n\t[19] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"9\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[20] DHDView \"DHDDivider\"\t\n\t[21] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"10\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[22] DHDView \"DHDDivider\"\t\n\t[23] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"11\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[24] DHDView \"DHDDivider\"\t\n\t[25] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"12\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[26] DHDView \"DHDDivider\"\t\n\t[27] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"13\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[28] DHDView \"DHDDivider\"\t\n\t[29] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"14\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[30] DHDView \"DHDDivider\"\t\n\t[31] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"15\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[32] DHDView \"DHDDivider\"\t\n\t[33] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"16\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[34] DHDView \"DHDDivider\"\t\n\t[35] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"17\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[36] DHDView \"DHDDivider\"\t\n\t[37] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"18\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[38] DHDView \"DHDDivider\"\t\n\t[39] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"19\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[40] DHDView \"DHDDivider\"\t\n\t[41] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"20\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[42] DHDView \"DHDDivider\"\t\n\t[43] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"21\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[44] DHDView \"DHDDivider\"\t\n\t[45] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"22\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[46] DHDView \"DHDDivider\"\t\n\t[47] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"23\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[48] DHDView \"DHDDivider\"\t\n\t[49] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"24\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[50] DHDView \"DHDDivider\"\t\n\t[51] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"25\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[52] DHDView \"DHDDivider\"\t\n\t[53] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"26\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[54] DHDView \"DHDDivider\"\t\n\t[55] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"27\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[56] DHDView \"DHDDivider\"\t\n\t[57] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"28\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[58] DHDView \"DHDDivider\"\t\n\t[59] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"29\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[60] DHDView \"DHDDivider\"\t\n\t[61] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"30\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[62] DHDView \"DHDDivider\"\t\n\t[63] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"31\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[64] DHDView \"DHDDivider\"\t\n\t[65] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"32\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[66] DHDView \"DHDDivider\"\t\n\t[67] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"33\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[68] DHDView \"DHDDivider\"\t\n\t[69] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"34\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[70] DHDView \"DHDDivider\"\t\n\t[71] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"35\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[72] DHDView \"DHDDivider\"\t\n\t[73] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"36\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[74] DHDView \"DHDDivider\"\t\n\t[75] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"37\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[76] DHDView \"DHDDivider\"\t\n\t[77] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"38\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[78] DHDView \"DHDDivider\"\t\n\t[79] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"39\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[80] DHDView \"DHDDivider\"\t\n\t[81] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"40\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[82] DHDView \"DHDDivider\"\t\n\t[83] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"41\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[84] DHDView \"DHDDivider\"\t\n\t[85] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"42\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[86] DHDView \"DHDDivider\"\t\n\t[87] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"43\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[88] DHDView \"DHDDivider\"\t\n\t[89] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"44\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[90] DHDView \"DHDDivider\"\t\n\t[91] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"45\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[92] DHDView \"DHDDivider\"\t\n\t[93] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"46\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[94] DHDView \"DHDDivider\"\t\n\t[95] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"47\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[96] DHDView \"DHDDivider\"\t\n\t[97] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"48\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[98] DHDView \"DHDDivider\"\t\n\t[99] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"49\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[100] DHDView \"DHDDivider\"\t\n\t[101] DHDVStack [\n\t\t[0] DHDView \"DHDSpacer\"\n\t\t[1] DHDLabel \"50\"\n\t\t[2] DHDView \"DHDSpacer\"\n\t]\n\t[102] DHDView \"DHDDivider\"\n]"
        XCTAssertEqual(hierarchy, expectedHierarchy)
    }

    // MARK: - Private
    private class ViewController: DHDViewController {
        var items: [String] {
            var localItems = [String]()
            for index in 0 ... 50 {
                localItems.append("\(index)")
            }
            return localItems
        }

        override var titled: String? { "Test" }

        override var body: UIView {
            get {
                let scrollView = DHDScrollView(fromSuper: view, forEach: items, style: .innerOuter) { item in
                    DHDVStack(arrangedSubviews: [
                        DHDView.spacer(vertical: 10),
                        DHDLabel(item),
                        DHDView.spacer(vertical: 10),
                    ])
                }
                .setMargin(verticalMargin: 10, horizontalMargin: 20)
                .tagged(viewTag)

                print(scrollView.stack.hierarchy)

                return scrollView
            }
            set { super.body = newValue }
        }
    }
}
