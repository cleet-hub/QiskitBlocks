--[[
Copyright 2019 the original author or authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--]]

--[[
Elements of the q_command table that supply information about areas in the game.
The "Note to devs" comments in Room 1 apply to all escape rooms in all levels
--]]

-- Escape room puzzles Level IV ------------------------------------------------
-------- Room 1 (Level IV)
-- Note to devs: Use lev_X_rm_Y pattern, where X is level number and Y is room number
q_command.areas.lev_4_rm_1 = {}
q_command.areas.lev_4_rm_1.region = q_command.regions.esc_rooms_level_4
table.insert(q_command.regions.esc_rooms_level_4, q_command.areas.lev_4_rm_1)
q_command.areas.lev_4_rm_1.area_num = #q_command.regions.esc_rooms_level_4

-- Note to devs: The center_pos x/y/z values should indicate the position of the center
-- block in the floor of the room. This is used, along with radius, to identify when a
-- player is in the room. This enables mechanisms such as greeting the player and
-- erasing their inventory when they enter an escape room.
q_command.areas.lev_4_rm_1.center_pos = {x = 238, y = 0, z = 32}
q_command.areas.lev_4_rm_1.radius = 5

-- Note to devs: The q_block_pos x/y/z values should indicate where the Q block is,
-- for input to mechanisms such as opening the exit door when a puzzle is solved.
-- Since the escape rooms in this level are already preloaded with default circuit
-- puzzles, it will often be necessary to change the q_block_pos when replacing it
-- with a different sized puzzle. To delete a puzzle from an escape room, hold the
-- shift key while left-clicking the Q block. To create a circuit puzzle in a room,
-- search the inventory for a Q block by using the pattern "lev_X_rm_Y", where X is
-- level number and Y is room number. Right-click to place the Q block in the
-- desired location in the room, and supply the desired number of rows/columns in the
-- circuit. You'll need to be in Creative Mode to search the inventory for Q blocks.
q_command.areas.lev_4_rm_1.q_block_pos = {x = 241, y = 0, z = 34}

-- Note to devs: The door_pos x/y/z values should indicate where the exit door is.
q_command.areas.lev_4_rm_1.door_pos = {x = 236, y = 0, z = 37}

-- Note to devs: The chest_pos x/y/z values should indicate where the chest is, so
-- that it may be restocked when a puzzle is solved.
q_command.areas.lev_4_rm_1.chest_pos = {x = 234, y = 0, z = 34}

-- Note to devs: Remove chest inventory items not required, by making their relevant
-- strings empty.
q_command.areas.lev_4_rm_1.chest_inv = {
    inventory = {
        main = {[1] = "", [2] = "", [3] = "", [4] = "", [5] = "", [6] = "",
                [7] = "circuit_blocks:circuit_blocks_gate_qubit_0",
                [8] = "circuit_blocks:circuit_blocks_gate_qubit_1",
                [9] = "", [10] = "", [11] = "", [12] = "", [13] = "", [14] = "",
                [15] = "circuit_blocks:swap_tool",
                [16] = "circuit_blocks:circuit_blocks_if_c0_eq0",
                [17] = "circuit_blocks:circuit_blocks_rx_gate_0p16",
                [18] = "circuit_blocks:circuit_blocks_ry_gate_0p16",
                [19] = "circuit_blocks:circuit_blocks_rz_gate_0p16",
                [20] = "circuit_blocks:circuit_blocks_sdg_gate",
                [21] = "circuit_blocks:circuit_blocks_tdg_gate",
                [22] = "circuit_blocks:circuit_blocks_swap",
                [23] = "circuit_blocks:rotate_tool",
                [24] = "circuit_blocks:circuit_blocks_barrier",
                [25] = "circuit_blocks:circuit_blocks_x_gate",
                [26] = "circuit_blocks:circuit_blocks_y_gate",
                [27] = "circuit_blocks:circuit_blocks_z_gate",
                [28] = "circuit_blocks:circuit_blocks_s_gate",
                [29] = "circuit_blocks:circuit_blocks_t_gate",
                [30] = "circuit_blocks:circuit_blocks_h_gate",
                [31] = "circuit_blocks:control_tool",
                [32] = "circuit_blocks:circuit_blocks_measure_z"
        }
    }
}

-- Note to devs: The variable ending in solution_unitary holds the unitary matrix
-- of complex numbers that represent the solution to a circuit puzzle. Use this
-- variable when the puzzle is expressed in terms of transforming various inputs
-- to corresponding outputs. For example, the circuit puzzle challenge in this
-- room is to create a CNOT gate, which is defined by a unique unitary matrix.
-- To obtain the value to supply here, *temporarily* uncomment the relevant line
-- in the init.lua file in the q_command directory:
--      minetest.debug("unitary:\n" .. dump(unitary))
-- This will cause the unitary matrix to appear in the debug.txt log file every
-- time the circuit is modified or measured. This matrix can be quite large, so
-- remove spaces, tabs, and newline characters before inserting here.
q_command.areas.lev_4_rm_1.solution_unitary =
{{{r=1,i=0},{r=0,i=0},{r=0,i=0},{r=0,i=0}},{{r=0,i=0},{r=0,i=0},{r=0,i=0},{r=1,i=0}},
{{r=0,i=0},{r=0,i=0},{r=1,i=0},{r=0,i=0}},{{r=0,i=0},{r=1,i=0},{r=0,i=0},{r=0,i=0}}}

-- Note to devs: The variable ending in solution_statevector holds the statevector
-- of complex numbers that represent the solution to a circuit puzzle. Use this
-- variable when the puzzle is expressed in terms of its desired statevector.
-- To obtain the value to supply here, *temporarily* uncomment the relevant line
-- in the init.lua file in the q_command directory:
--      minetest.debug("statevector:\n" .. dump(statevector))
-- This will cause the statevector to appear in the debug.txt log file every
-- time the circuit is modified or measured. This vector can be quite large, so
-- remove spaces, tabs, and newline characters before inserting here.
--[[
q_command.areas.lev_4_rm_1.solution_statevector =
{{r=0,i=0},{r=0,i=0},{r=1,i=0},{r=0,i=0}}
--]]

-- Note to devs: The variable ending in help_chat_msg holds the English version of
-- the message that Professor Q will chat to the player when entering an escape room
-- for the first time since the application is invoked. Note that for chat messages,
-- ".en" is *not* added to the end of the variable.
q_command.areas.lev_4_rm_1.help_chat_msg = {
	"We meet again, esteemed colleague! You may recall that my name is Professor Q and",
	"that I'm standing behind this glass because we're conducting quantum experiments.",
	"I'm sure that you'll be fine though :-) For this experiment, make a circuit that",
	"realizes a digital 'exclusive or' gate as shown on the wall. You may place |1>",
	"blocks on wires to test input combinations without affecting the exit door."
}
-- Note to devs: The variable ending in help_chat_msg and a language code holds the
-- localized version of the message that Professor Q will chat to the player when
-- entering an escape room for the first time since the application is invoked.
q_command.areas.lev_4_rm_1.help_chat_msg.ja = {
	"また会いましたね、尊敬する同僚！私の名前はQ教授で、量子実験を行っているため、このガ",
	"ラスの後ろに立っていることを思い出してください。私はあなたが元気だと確信しています:-)",
	"この実験では、壁にあるようにデジタルの「排他的OR」ゲートを実現する回路を作成します。",
	"出口のドアが開くかどうかに影響を与えることなく、入力をテストするために、ワイアー線上",
	"に|1>のブロックを配置できます。"
}
q_command.areas.lev_4_rm_1.help_chat_sent = false

-- Note to devs: The variable ending in help_success_msg holds the English version of
-- the message that Professor Q will chat to the player when solving an escape room
-- puzzle for the first time since the application is invoked. Note that for chat
-- messages, ".en" is *not* added to the end of the variable.
q_command.areas.lev_4_rm_1.help_success_msg = {
	"Well done! You may know that the CNOT gate is its own inverse, so supplying the ",
	"output as input will give you the original input as output. That's reversible ",
	"computing, with no qubits falling in the bit bucket! Perhaps experiment with ",
	"that before leaving this room to see reversible computing in action."
}
-- Note to devs: The variable ending in help_success_msg and a language code holds the
-- localized version of the message that Professor Q will chat to the player when
-- solving an escape room puzzle for the first time since the application is invoked.
q_command.areas.lev_4_rm_1.help_success_msg.ja = {
	"よくできました！ CNOTゲートはそれ自体が可逆であることがわかっているため、出力を入力 ",
	"として提供すると、元の入力が出力として提供されます。 これは、ビットのバケツに量子ビッ ",
	"トが入らないリバーシブルなコンピューティングです。この部屋を出る前にそれを試して、リ ",
	"バーシブルコンピューティングの動作を確認してください。"
}
q_command.areas.lev_4_rm_1.success_chat_sent = false

-- Note to devs: The variable ending in help_btn_text followed by a language code
-- holds the text that appears when right-clicking a help sign that contains a
-- question mark "?". When used in an escape room, the sign should be located directly
-- above the chest, and should start with the same message as the chat message held in
-- the localized help_chat_msg variables discussed previously. If it seems prudent,
-- additional notes and hints should be included in the text, but be careful not to
-- make it too easy for the player to solve the puzzle. Note that for help_btn_text
-- it is necessary to include the language code (".en") when supplying English text.
-- Whenever you change the text on a sign, delete it from the wall by left-clicking,
-- and put it back on the wall by wielding the sign and right-clicking. To find the
-- sign in inventory for a given escape room, search with the pattern "lev_X_rm_Y",
-- where X is level number and Y is room number.
q_command.areas.lev_4_rm_1.help_btn_text = {}
q_command.areas.lev_4_rm_1.help_btn_text.en =
[[
We meet again, esteemed colleague! You may recall that my name is
Professor Q and that I'm standing behind this glass because we're
conducting quantum experiments. I'm sure that you'll be fine though :-)
For this experiment, make a circuit that realizes a digital
'exclusive or' gate as shown on the wall. You may place |1> blocks on
wires to test input combinations without affecting the exit door.

Notes: Most of the help that you'll need for these 'escape room' circuit
puzzles will appear in the chat area (upper left corner of your window)
by Professor Q. For all of these puzzles, get blocks from the chest and
place them on the circuit. When you solve a puzzle, the Q block will
turn gold, celebration music will play, and the door to the next room
will open. Please solve the Level I escape rooms if you haven't already,
as they help build knowledge and skills for these Level II puzzles.

To perform a measurement on a circuit, right-click a measurement block.

To convert an X gate into a controlled-X gate (and vice-versa),
left-click or right-click the block while wielding the Control Tool (the
wand-shaped tool in the chest). Left-clicking moves the control
qubit up one wire, and right-clicking moves the control qubit down one
wire. The controlled-X gate is also known as the controlled-NOT, or CNOT
gate. It acts on a pair of qubits, with one acting as control and the
other as target. It performs an X operation on the target whenever the
control is in state |1>. If the control qubit is in a superposition,
this gate creates entanglement.
]]
q_command.areas.lev_4_rm_1.help_btn_text.es = q_command.areas.lev_4_rm_1.help_btn_text.en
q_command.areas.lev_4_rm_1.help_btn_text.ja =
[[
また会いましたね、尊敬する同僚！私の名前はQ教授で、量子実験を行っているため、このガ
ラスの後ろに立っていることを思い出してください。私はあなたが元気だと確信しています:-)
この実験では、壁にあるようにデジタルの「排他的OR」ゲートを実現する回路を作成します。
出口のドアが開くかどうかに影響を与えることなく、入力をテストするために、ワイアー線上
に|1>のブロックを配置できます。

注：これらの「脱出ルーム」サーキットパズルに必要なほとんどのヘルプは、教授Qのチャッ
トエリア（ウィンドウの左上隅）に表示されます。これらのパズルはみな、チェストからブ
ロックを取得し、回路に配置するというものです。パズルを解くと、Qブロックが金色に変
わって、お祝いの音楽がなり、隣の部屋への扉が開きます。レベル II パズルのための知識とス
キルの構築に役立つため、レベル I 脱出ルームをまだ解いていない場合は解いてから始めてく
ださい。

回路で測定を実行するには、測定ブロックを右クリックします。

Xゲートを制御Xゲートに（およびその逆に）変換するには、コントロールツール（チェストの
杖型ツール）を持ちながらブロックを左クリックまたは右クリックします。左クリックすると
制御量子ビットが1ワイヤ上に移動し、右クリックすると制御量子ビットが1ワイヤ下に移動し
ます。制御Xゲートは、制御NOTゲートまたはCNOTゲートとも呼ばれます。一対の量子ビッ
トに作用し、一方がコントロール側として機能し、もう一方がターゲット側として機能しま
す。コントロール側が|1>の状態の時、ターゲット側でX操作を実行します。制御量子ビットが
重ね合わせにある場合、このゲートはエンタングルメント状態を作ります。
]]


-- Note to devs: The variable ending in help_btn_caption followed by a language code
-- holds the text that appears in the caption of a help sign. Note that for
-- help_btn_caption it is necessary to include the language code (".en") when
-- supplying English text.
q_command.areas.lev_4_rm_1.help_btn_caption = {}
q_command.areas.lev_4_rm_1.help_btn_caption.en = "Make a quantum logic XOR gate"
q_command.areas.lev_4_rm_1.help_btn_caption.es = q_command.areas.lev_4_rm_1.help_btn_caption.en
q_command.areas.lev_4_rm_1.help_btn_caption.ja = "量子論理XORゲートを作る"


-------- Room 2 (Level IV)
q_command.areas.lev_4_rm_2 = {}
q_command.areas.lev_4_rm_2.region = q_command.regions.esc_rooms_level_4
table.insert(q_command.regions.esc_rooms_level_4, q_command.areas.lev_4_rm_2)
q_command.areas.lev_4_rm_2.area_num = #q_command.regions.esc_rooms_level_4

q_command.areas.lev_4_rm_2.center_pos = {x = 238, y = 0, z = 42}
q_command.areas.lev_4_rm_2.radius = 5
q_command.areas.lev_4_rm_2.q_block_pos = {x = 235, y = 0, z = 40}

q_command.areas.lev_4_rm_2.door_pos = {x = 243, y = 0, z = 44}
q_command.areas.lev_4_rm_2.chest_pos = {x = 240, y = 0, z = 46}
q_command.areas.lev_4_rm_2.chest_inv = {
    inventory = {
        main = {[1] = "", [2] = "", [3] = "", [4] = "", [5] = "", [6] = "",
                [7] = "circuit_blocks:circuit_blocks_gate_qubit_0",
                [8] = "circuit_blocks:circuit_blocks_gate_qubit_1",
                [9] = "", [10] = "", [11] = "", [12] = "", [13] = "", [14] = "",
                [15] = "circuit_blocks:swap_tool",
                [16] = "circuit_blocks:circuit_blocks_if_c0_eq0",
                [17] = "circuit_blocks:circuit_blocks_rx_gate_0p16",
                [18] = "circuit_blocks:circuit_blocks_ry_gate_0p16",
                [19] = "circuit_blocks:circuit_blocks_rz_gate_0p16",
                [20] = "circuit_blocks:circuit_blocks_sdg_gate",
                [21] = "circuit_blocks:circuit_blocks_tdg_gate",
                [22] = "circuit_blocks:circuit_blocks_swap",
                [23] = "circuit_blocks:rotate_tool",
                [24] = "circuit_blocks:circuit_blocks_barrier",
                [25] = "circuit_blocks:circuit_blocks_x_gate",
                [26] = "circuit_blocks:circuit_blocks_y_gate",
                [27] = "circuit_blocks:circuit_blocks_z_gate",
                [28] = "circuit_blocks:circuit_blocks_s_gate",
                [29] = "circuit_blocks:circuit_blocks_t_gate",
                [30] = "circuit_blocks:circuit_blocks_h_gate",
                [31] = "circuit_blocks:control_tool",
                [32] = "circuit_blocks:circuit_blocks_measure_z"
        }
    }
}
q_command.areas.lev_4_rm_2.solution_unitary =
{{{r=0,i=0},{r=0,i=0},{r=1,i=0},{r=0,i=0}},{{r=0,i=0},{r=1,i=0},{r=0,i=0},{r=0,i=0}},
{{r=1,i=0},{r=0,i=0},{r=0,i=0},{r=0,i=0}},{{r=0,i=0},{r=0,i=0},{r=0,i=0},{r=1,i=0}}}

q_command.areas.lev_4_rm_2.help_chat_msg = {
	"Make a circuit like the last one, but negate the output as shown on the wall."
}
q_command.areas.lev_4_rm_2.help_chat_msg.ja = {
	"先ほどと同じような回路を作成しますが、壁に示されているように出力を否定します。"
}
q_command.areas.lev_4_rm_2.help_chat_sent = false
q_command.areas.lev_4_rm_2.help_success_msg = {
	"Nice job. I'll keep adding twists like that X gate so you'll be creating ",
	"circuits with increasingly complex quantum logic in no time!"
}
q_command.areas.lev_4_rm_2.help_success_msg.ja = {
	"良くやりました。Xゲートのような反転を追加し続けることで、ますます複雑化する量子ロ ",
	"ジックを備えた回路をすぐに作成できるようになります。"
}
q_command.areas.lev_4_rm_2.success_chat_sent = false

q_command.areas.lev_4_rm_2.help_btn_text = {}
q_command.areas.lev_4_rm_2.help_btn_text.en =
[[
Make a circuit like the last one, but negate the output as shown on the wall
]]
q_command.areas.lev_4_rm_2.help_btn_text.es = q_command.areas.lev_4_rm_2.help_btn_text.en
q_command.areas.lev_4_rm_2.help_btn_text.ja =
[[
先ほどと同じような回路を作成しますが、壁に示されているように出力を否定します。
]]
q_command.areas.lev_4_rm_2.help_btn_caption = {}
q_command.areas.lev_4_rm_2.help_btn_caption.en = "Make a NOT XOR quantum logic gate"
q_command.areas.lev_4_rm_2.help_btn_caption.es = q_command.areas.lev_4_rm_2.help_btn_caption.en
q_command.areas.lev_4_rm_2.help_btn_caption.ja = "NOT XOR量子論理ゲートを作る"



-- END Escape room puzzles Level III --------------------------------------------
