--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: vga_driver_synthesis.vhd
-- /___/   /\     Timestamp: Fri Dec  1 13:56:04 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm vga_driver -w -dir netgen/synthesis -ofmt vhdl -sim vga_driver.ngc vga_driver_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: vga_driver.ngc
-- Output file	: /home/student1/m7jo/coe758/simplegame/SimpleVideoGame/netgen/synthesis/vga_driver_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: vga_driver
-- Xilinx	: /CMC/tools/xilinx/13.4/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity vga_driver is
  port (
    clk : in STD_LOGIC := 'X'; 
    h_sync : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    SW0 : in STD_LOGIC := 'X'; 
    SW1 : in STD_LOGIC := 'X'; 
    v_sync : out STD_LOGIC; 
    out_clk_half : out STD_LOGIC; 
    Bout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Gout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Rout : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end vga_driver;

architecture Structure of vga_driver is
  signal Bout_0_8 : STD_LOGIC; 
  signal Bout_4_9 : STD_LOGIC; 
  signal Bout_mux0016_0_Q_10 : STD_LOGIC; 
  signal Bout_mux0016_0_2124_11 : STD_LOGIC; 
  signal Bout_mux0016_4_Q : STD_LOGIC; 
  signal Gout_0_21 : STD_LOGIC; 
  signal Gout_5_22 : STD_LOGIC; 
  signal Gout_mux0017_0_1121_23 : STD_LOGIC; 
  signal Gout_mux0017_0_114_24 : STD_LOGIC; 
  signal Gout_mux0017_0_1149_25 : STD_LOGIC; 
  signal Gout_mux0017_0_1154_26 : STD_LOGIC; 
  signal Gout_mux0017_0_130_27 : STD_LOGIC; 
  signal Gout_mux0017_0_1322_28 : STD_LOGIC; 
  signal Gout_mux0017_0_136_29 : STD_LOGIC; 
  signal Madd_add0000_add0000_cy_1_rt_67 : STD_LOGIC; 
  signal Madd_add0000_add0000_cy_3_rt_70 : STD_LOGIC; 
  signal Madd_add0000_add0000_cy_4_rt_72 : STD_LOGIC; 
  signal Madd_add0000_add0000_cy_5_rt_74 : STD_LOGIC; 
  signal Madd_add0000_add0000_cy_6_rt_76 : STD_LOGIC; 
  signal Madd_add0000_add0000_cy_7_rt_78 : STD_LOGIC; 
  signal Madd_add0000_add0000_cy_8_rt_80 : STD_LOGIC; 
  signal Madd_add0000_add0000_lut_0_Q : STD_LOGIC; 
  signal Madd_add0000_add0000_lut_2_Q : STD_LOGIC; 
  signal Madd_add0000_add0000_xor_9_rt_83 : STD_LOGIC; 
  signal Madd_add0001_add0000_cy_3_rt_86 : STD_LOGIC; 
  signal Madd_add0001_add0000_cy_4_rt_88 : STD_LOGIC; 
  signal Madd_add0001_add0000_cy_5_rt_90 : STD_LOGIC; 
  signal Madd_add0001_add0000_cy_6_rt_92 : STD_LOGIC; 
  signal Madd_add0001_add0000_cy_7_rt_94 : STD_LOGIC; 
  signal Madd_add0001_add0000_xor_1_rt_96 : STD_LOGIC; 
  signal Madd_add0001_add0000_xor_8_rt_97 : STD_LOGIC; 
  signal Madd_add0002_addsub0000_cy_5_Q : STD_LOGIC; 
  signal Madd_add0002_addsub0000_cy_7_Q : STD_LOGIC; 
  signal Madd_add0002_index0000_inv_100 : STD_LOGIC; 
  signal Madd_add0002_index0000_mand1 : STD_LOGIC; 
  signal Madd_add0003_addsub0000_cy_5_Q : STD_LOGIC; 
  signal Madd_add0003_addsub0000_cy_7_Q : STD_LOGIC; 
  signal Madd_add0003_index0000_inv_104 : STD_LOGIC; 
  signal Madd_add0003_index0000_mand1 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_1_139 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_2_140 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_3_141 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_4_142 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_0_rt_144 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_1_rt_145 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_2_rt_146 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_3_rt_147 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_4_rt_148 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_0_rt_149 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_10_1_151 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_10_2_152 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_1_1_157 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_1_2_158 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_1_3_159 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_1_4_160 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_1_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_1_163 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_2_164 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_3_165 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_4_166 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_0_rt_168 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_2_rt_169 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_3_rt_170 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_4_rt_171 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_2_rt_172 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_3_1_174 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_3_2_175 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_3_3_176 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_3_4_177 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_3_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_4_1_180 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_4_2_181 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_4_3_182 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_4_4_183 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_4_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_4_1_rt_185 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_4_2_rt_186 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_4_4_rt_187 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_5_1_189 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_5_2_190 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_5_3_191 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_5_4_192 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_5_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_6_1_195 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_6_2_196 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_6_3_197 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_6_4_198 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_6_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_6_2_rt_200 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_7_1_202 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_7_2_203 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_7_3_204 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_7_4_205 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_7_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_8_1_208 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_8_2_209 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_8_3_210 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_8_4_211 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_8_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_9_1_214 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_9_2_215 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_9_3_216 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_9_4_217 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_cy_9_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_10_1 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_10_2 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_10_3_222 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_10_4 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_10_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_11_1_226 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_11_2 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_1_1 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_1_2_232 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_1_3 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_1_4 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_1_5_235 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_3_1_238 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_3_2_239 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_3_3_240 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_3_4_241 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_3_5_242 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_4_1_244 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_4_2_245 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_5_1_247 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_5_2_248 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_5_3 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_5_4_250 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_5_5_251 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_6_1_253 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_6_2_254 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_6_3_255 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_6_4_256 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_7_1_258 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_7_2_259 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_7_3_260 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_7_4_261 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_7_5_262 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_8_1_264 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_8_2_265 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_8_3_266 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_8_4_267 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_8_5_268 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_9_1_270 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_9_2_271 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_9_3_272 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_9_4 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0000_lut_9_5_274 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_1_276 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_2_277 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_3_278 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_4_279 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_5_280 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_6_281 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_4_rt_283 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_6_rt_284 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_0_rt_285 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_10_1_287 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_10_2_288 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_10_3_289 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_10_4_290 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_11_1_292 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_11_2_293 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_11_3_294 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_1_1_296 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_1_2_297 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_1_3_298 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_1_4_299 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_1_5_300 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_1_6_301 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_1_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_1_304 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_2_305 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_3_306 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_4_307 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_5_308 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_6_309 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_0_rt_311 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_2_rt_312 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_3_rt_313 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_2_rt_314 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_3_1_316 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_3_2_317 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_3_3_318 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_3_4_319 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_3_5_320 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_3_6_321 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_3_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_1_324 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_2_325 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_3_326 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_4_327 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_5_328 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_6_329 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_0_rt_331 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_2_rt_332 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_3_rt_333 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_4_5_rt_334 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_5_1_336 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_5_2_337 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_5_3_338 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_5_4_339 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_5_5_340 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_5_6_341 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_5_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_6_1_344 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_6_2_345 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_6_3_346 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_6_4_347 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_6_5_348 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_6_6_349 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_6_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_7_1_352 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_7_2_353 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_7_3_354 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_7_4_355 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_7_5_356 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_7_6_357 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_7_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_8_1_360 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_8_2_361 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_8_3_362 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_8_4_363 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_8_5_364 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_8_6_365 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_8_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_9_1_368 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_9_2_369 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_9_3_370 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_9_4_371 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_9_5_372 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_cy_9_6_373 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_0_1_375 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_0_2_376 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_0_3_377 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_0_4_378 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_10_1_380 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_10_2_381 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_10_3_382 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_10_4_383 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_10_5_384 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_11_1 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_11_2 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_11_3 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_11_4 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_1_1 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_1_2_392 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_1_3 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_1_4 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_1_5_395 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_1_6 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_1_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_2_1_399 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_2_2_400 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_2_3_401 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_3_1_403 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_3_2_404 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_3_3_405 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_3_4_406 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_3_5_407 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_3_6 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_3_7 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_4_1_411 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_4_2_412 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_4_3_413 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_5_1_415 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_5_2_416 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_5_3_417 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_5_4_418 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_5_5_419 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_5_6_420 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_5_7_421 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_6_1_423 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_6_2_424 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_6_3_425 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_6_4_426 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_6_5_427 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_6_6_428 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_6_7_429 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_7_1_431 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_7_2_432 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_7_3_433 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_7_4_434 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_7_5_435 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_7_6_436 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_7_7_437 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_8_1_439 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_8_2_440 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_8_3_441 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_8_4_442 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_8_5_443 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_8_6_444 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_8_7_445 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_9_1_447 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_9_2 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_9_3_449 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_9_4_450 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_9_5 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_9_6_452 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0001_lut_9_7_453 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_ge0006_cy_0_rt_455 : STD_LOGIC; 
  signal Mcompar_ball_speedx_cmp_le0002_cy_0_rt_745 : STD_LOGIC; 
  signal Mcompar_ball_speedx_cmp_le0004_cy_0_rt_762 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_0_1_779 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_0_2_780 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_0_3_781 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_0_4_782 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_0_5_783 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_0_6_784 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_0_7_785 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_0_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_10_1_788 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_10_2_789 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_10_3_790 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_10_4_791 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_10_5_792 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_10_6_793 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_11_1_795 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_11_2_796 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_1_798 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_2_799 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_3_800 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_4_801 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_5_802 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_6_803 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_7_804 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_0_rt_806 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_2_rt_807 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_3_rt_808 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_6_rt_809 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_1_rt_810 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_2_1_812 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_2_2_813 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_2_3_814 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_2_4_815 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_2_5_816 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_2_6_817 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_2_7_818 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_2_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_1_821 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_2_822 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_3_823 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_4_824 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_5_825 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_6_826 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_7_827 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_0_rt_829 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_1_rt_830 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_2_rt_831 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_5_rt_832 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_3_7_rt_833 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_4_1_835 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_4_2_836 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_4_3_837 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_4_4_838 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_4_5_839 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_4_6_840 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_4_7_841 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_4_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_1_844 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_2_845 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_3_846 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_4_847 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_5_848 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_6_849 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_7_850 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_3_rt_852 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_4_rt_853 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_5_7_rt_854 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_6_1_856 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_6_2_857 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_6_3_858 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_6_4_859 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_6_5_860 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_6_6_861 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_6_7_862 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_6_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_7_1_865 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_7_2_866 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_7_3_867 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_7_4_868 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_7_5_869 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_7_6_870 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_7_7_871 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_7_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_8_1_874 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_8_2_875 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_8_3_876 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_8_4_877 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_8_5_878 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_8_6_879 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_8_7_880 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_9_1_882 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_9_2_883 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_9_3_884 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_9_4_885 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_9_5_886 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_9_6_887 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_cy_9_7 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_0_1_890 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_0_2 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_0_3_892 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_0_4 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_0_5_894 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_0_6 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_0_7 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_0_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_10_1 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_10_2_900 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_10_3_901 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_10_4_902 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_10_5 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_10_6 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_10_7_905 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_11_1 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_11_2 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_11_3 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_11_4 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_12_1 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_12_2 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_1_1_915 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_1_2_916 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_1_3_917 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_2_1 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_2_2 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_2_3 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_2_4_922 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_2_5 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_2_6_924 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_2_7_925 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_2_8_926 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_3_1_928 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_3_2_929 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_3_3_930 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_4_1_932 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_4_2_933 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_4_3_934 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_4_4_935 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_4_5_936 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_4_6_937 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_4_7_938 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_4_8_939 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_5_1_941 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_5_2_942 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_5_3_943 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_5_4_944 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_5_5_945 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_6_1_947 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_6_2_948 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_6_3_949 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_6_4_950 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_6_5_951 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_6_6_952 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_6_7_953 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_6_8_954 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_7_1_956 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_7_2_957 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_7_3_958 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_7_4_959 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_7_5_960 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_7_6_961 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_7_7_962 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_7_8_963 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_8_1_965 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_8_2_966 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_8_3_967 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_8_4_968 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_8_5_969 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_8_6_970 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_8_7_971 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_8_8_972 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_9_1 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_9_2_975 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_9_3_976 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_9_4_977 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_9_5_978 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_9_6_979 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0000_lut_9_7_980 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_1_982 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_10_983 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_2_985 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_3_986 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_4_987 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_5_988 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_6_989 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_7_990 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_8_991 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_0_9_992 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_10_1_994 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_10_2_995 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_10_3_996 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_10_4_997 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_10_5_998 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_10_6_999 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_10_7_1000 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_11_1_1002 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_11_2_1003 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_1_1006 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_10_1007 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_2_1009 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_3_1010 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_4_1011 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_5_1012 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_6_1013 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_7_1014 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_8_1015 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_9_1016 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_0_rt_1017 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_10_rt_1018 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_1_rt_1019 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_4_rt_1020 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_5_rt_1021 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_6_rt_1022 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_7_rt_1023 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_8_rt_1024 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_1_9_rt_1025 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_1_1027 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_10_1028 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_2_1030 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_3_1031 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_4_1032 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_5_1033 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_6_1034 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_7_1035 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_8_1036 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_2_9_1037 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_1_1039 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_10_1040 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_2_1042 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_3_1043 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_4_1044 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_5_1045 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_6_1046 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_7_1047 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_8_1048 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_9_1049 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_1_rt_1050 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_2_rt_1051 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_4_rt_1052 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_3_8_rt_1053 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_1_1055 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_10_1056 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_2_1058 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_3_1059 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_4_1060 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_5_1061 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_6_1062 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_7_1063 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_8_1064 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_9_1065 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_4_6_rt_1066 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_1_1068 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_10_1069 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_2_1071 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_3_1072 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_4_1073 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_5_1074 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_6_1075 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_7_1076 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_8_1077 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_9_1078 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_5_8_rt_1079 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_1_1081 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_10_1082 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_2_1084 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_3_1085 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_4_1086 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_5_1087 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_6_1088 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_7_1089 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_8_1090 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_6_9_1091 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_1_1093 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_10_1094 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_2_1096 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_3_1097 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_4_1098 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_5_1099 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_6_1100 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_7_1101 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_8_1102 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_7_9_1103 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_1_1105 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_10_1106 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_2_1107 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_3_1108 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_4_1109 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_5_1110 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_6_1111 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_7_1112 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_8_1113 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_8_9_1114 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_1_1116 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_10 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_2_1118 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_3_1119 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_4_1120 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_5_1121 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_6_1122 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_7_1123 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_8_1124 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_cy_9_9_1125 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_1_1127 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_10 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_11_1129 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_2_1130 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_3 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_4_1132 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_5 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_6_1134 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_7 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_8_1136 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_0_9 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_1_1139 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_2_1140 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_3 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_4 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_5_1143 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_6 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_7_1145 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_10_9 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_11_1_1149 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_11_2 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_11_3_1151 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_12_1 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_1_1_1155 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_1_2_1156 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_1_1158 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_10 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_11 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_2 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_3 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_4_1163 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_5 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_6_1165 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_7 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_8_1167 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_2_9_1168 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_3_1_1170 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_3_2_1171 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_3_3_1172 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_3_4_1173 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_3_5_1174 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_3_6_1175 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_3_7_1176 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_1_1178 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_10_1179 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_2_1180 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_3 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_4_1182 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_5_1183 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_6_1184 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_7_1185 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_8 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_4_9_1187 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_1_1189 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_10_1190 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_2_1191 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_3_1192 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_4_1193 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_5_1194 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_6_1195 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_7_1196 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_8_1197 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_5_9_1198 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_1_1200 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_10_1201 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_11_1202 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_2_1203 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_3_1204 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_4_1205 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_5_1206 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_6_1207 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_7_1208 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_8_1209 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_6_9_1210 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_1_1212 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_10_1213 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_11_1214 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_2_1215 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_3_1216 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_4_1217 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_5_1218 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_6_1219 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_7_1220 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_8_1221 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_7_9_1222 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_1_1224 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_10_1225 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_11_1226 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_2_1227 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_3_1228 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_4_1229 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_5_1230 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_6_1231 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_7_1232 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_8_1233 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_8_9_1234 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_1_1236 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_10_1237 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_2_1238 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_3 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_4_1240 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_5_1241 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_6_1242 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_7_1243 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_8_1244 : STD_LOGIC; 
  signal Mcompar_video_on_cmp_le0001_lut_9_9_1245 : STD_LOGIC; 
  signal Mcount_h_pos_cy_10_rt_1248 : STD_LOGIC; 
  signal Mcount_h_pos_cy_11_rt_1250 : STD_LOGIC; 
  signal Mcount_h_pos_cy_12_rt_1252 : STD_LOGIC; 
  signal Mcount_h_pos_cy_13_rt_1254 : STD_LOGIC; 
  signal Mcount_h_pos_cy_14_rt_1256 : STD_LOGIC; 
  signal Mcount_h_pos_cy_15_rt_1258 : STD_LOGIC; 
  signal Mcount_h_pos_cy_16_rt_1260 : STD_LOGIC; 
  signal Mcount_h_pos_cy_17_rt_1262 : STD_LOGIC; 
  signal Mcount_h_pos_cy_18_rt_1264 : STD_LOGIC; 
  signal Mcount_h_pos_cy_19_rt_1266 : STD_LOGIC; 
  signal Mcount_h_pos_cy_1_rt_1268 : STD_LOGIC; 
  signal Mcount_h_pos_cy_20_rt_1270 : STD_LOGIC; 
  signal Mcount_h_pos_cy_21_rt_1272 : STD_LOGIC; 
  signal Mcount_h_pos_cy_22_rt_1274 : STD_LOGIC; 
  signal Mcount_h_pos_cy_23_rt_1276 : STD_LOGIC; 
  signal Mcount_h_pos_cy_24_rt_1278 : STD_LOGIC; 
  signal Mcount_h_pos_cy_25_rt_1280 : STD_LOGIC; 
  signal Mcount_h_pos_cy_26_rt_1282 : STD_LOGIC; 
  signal Mcount_h_pos_cy_27_rt_1284 : STD_LOGIC; 
  signal Mcount_h_pos_cy_28_rt_1286 : STD_LOGIC; 
  signal Mcount_h_pos_cy_29_rt_1288 : STD_LOGIC; 
  signal Mcount_h_pos_cy_2_rt_1290 : STD_LOGIC; 
  signal Mcount_h_pos_cy_30_rt_1292 : STD_LOGIC; 
  signal Mcount_h_pos_cy_3_rt_1294 : STD_LOGIC; 
  signal Mcount_h_pos_cy_4_rt_1296 : STD_LOGIC; 
  signal Mcount_h_pos_cy_5_rt_1298 : STD_LOGIC; 
  signal Mcount_h_pos_cy_6_rt_1300 : STD_LOGIC; 
  signal Mcount_h_pos_cy_7_rt_1302 : STD_LOGIC; 
  signal Mcount_h_pos_cy_8_rt_1304 : STD_LOGIC; 
  signal Mcount_h_pos_cy_9_rt_1306 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_0 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_1 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_10 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_11 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_12 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_13 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_14 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_15 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_16 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_17 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_18 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_19 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_2 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_20 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_21 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_22 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_23 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_24 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_25 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_26 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_27 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_28 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_29 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_3 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_30 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_31 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_4 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_5 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_6 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_7 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_8 : STD_LOGIC; 
  signal Mcount_h_pos_eqn_9 : STD_LOGIC; 
  signal Mcount_h_pos_xor_31_rt_1340 : STD_LOGIC; 
  signal Mcount_increment_cy_10_rt_1343 : STD_LOGIC; 
  signal Mcount_increment_cy_11_rt_1345 : STD_LOGIC; 
  signal Mcount_increment_cy_12_rt_1347 : STD_LOGIC; 
  signal Mcount_increment_cy_13_rt_1349 : STD_LOGIC; 
  signal Mcount_increment_cy_14_rt_1351 : STD_LOGIC; 
  signal Mcount_increment_cy_15_rt_1353 : STD_LOGIC; 
  signal Mcount_increment_cy_16_rt_1355 : STD_LOGIC; 
  signal Mcount_increment_cy_17_rt_1357 : STD_LOGIC; 
  signal Mcount_increment_cy_18_rt_1359 : STD_LOGIC; 
  signal Mcount_increment_cy_19_rt_1361 : STD_LOGIC; 
  signal Mcount_increment_cy_1_rt_1363 : STD_LOGIC; 
  signal Mcount_increment_cy_20_rt_1365 : STD_LOGIC; 
  signal Mcount_increment_cy_21_rt_1367 : STD_LOGIC; 
  signal Mcount_increment_cy_22_rt_1369 : STD_LOGIC; 
  signal Mcount_increment_cy_23_rt_1371 : STD_LOGIC; 
  signal Mcount_increment_cy_24_rt_1373 : STD_LOGIC; 
  signal Mcount_increment_cy_25_rt_1375 : STD_LOGIC; 
  signal Mcount_increment_cy_26_rt_1377 : STD_LOGIC; 
  signal Mcount_increment_cy_27_rt_1379 : STD_LOGIC; 
  signal Mcount_increment_cy_28_rt_1381 : STD_LOGIC; 
  signal Mcount_increment_cy_29_rt_1383 : STD_LOGIC; 
  signal Mcount_increment_cy_2_rt_1385 : STD_LOGIC; 
  signal Mcount_increment_cy_30_rt_1387 : STD_LOGIC; 
  signal Mcount_increment_cy_3_rt_1389 : STD_LOGIC; 
  signal Mcount_increment_cy_4_rt_1391 : STD_LOGIC; 
  signal Mcount_increment_cy_5_rt_1393 : STD_LOGIC; 
  signal Mcount_increment_cy_6_rt_1395 : STD_LOGIC; 
  signal Mcount_increment_cy_7_rt_1397 : STD_LOGIC; 
  signal Mcount_increment_cy_8_rt_1399 : STD_LOGIC; 
  signal Mcount_increment_cy_9_rt_1401 : STD_LOGIC; 
  signal Mcount_increment_eqn_0 : STD_LOGIC; 
  signal Mcount_increment_eqn_1 : STD_LOGIC; 
  signal Mcount_increment_eqn_10 : STD_LOGIC; 
  signal Mcount_increment_eqn_11 : STD_LOGIC; 
  signal Mcount_increment_eqn_12 : STD_LOGIC; 
  signal Mcount_increment_eqn_13 : STD_LOGIC; 
  signal Mcount_increment_eqn_14 : STD_LOGIC; 
  signal Mcount_increment_eqn_15 : STD_LOGIC; 
  signal Mcount_increment_eqn_16 : STD_LOGIC; 
  signal Mcount_increment_eqn_17 : STD_LOGIC; 
  signal Mcount_increment_eqn_18 : STD_LOGIC; 
  signal Mcount_increment_eqn_19 : STD_LOGIC; 
  signal Mcount_increment_eqn_2 : STD_LOGIC; 
  signal Mcount_increment_eqn_20 : STD_LOGIC; 
  signal Mcount_increment_eqn_21 : STD_LOGIC; 
  signal Mcount_increment_eqn_22 : STD_LOGIC; 
  signal Mcount_increment_eqn_23 : STD_LOGIC; 
  signal Mcount_increment_eqn_24 : STD_LOGIC; 
  signal Mcount_increment_eqn_25 : STD_LOGIC; 
  signal Mcount_increment_eqn_26 : STD_LOGIC; 
  signal Mcount_increment_eqn_27 : STD_LOGIC; 
  signal Mcount_increment_eqn_28 : STD_LOGIC; 
  signal Mcount_increment_eqn_29 : STD_LOGIC; 
  signal Mcount_increment_eqn_3 : STD_LOGIC; 
  signal Mcount_increment_eqn_30 : STD_LOGIC; 
  signal Mcount_increment_eqn_31 : STD_LOGIC; 
  signal Mcount_increment_eqn_4 : STD_LOGIC; 
  signal Mcount_increment_eqn_5 : STD_LOGIC; 
  signal Mcount_increment_eqn_6 : STD_LOGIC; 
  signal Mcount_increment_eqn_7 : STD_LOGIC; 
  signal Mcount_increment_eqn_8 : STD_LOGIC; 
  signal Mcount_increment_eqn_9 : STD_LOGIC; 
  signal Mcount_increment_xor_31_rt_1435 : STD_LOGIC; 
  signal Mcount_v_pos_cy_10_rt_1438 : STD_LOGIC; 
  signal Mcount_v_pos_cy_11_rt_1440 : STD_LOGIC; 
  signal Mcount_v_pos_cy_12_rt_1442 : STD_LOGIC; 
  signal Mcount_v_pos_cy_13_rt_1444 : STD_LOGIC; 
  signal Mcount_v_pos_cy_14_rt_1446 : STD_LOGIC; 
  signal Mcount_v_pos_cy_15_rt_1448 : STD_LOGIC; 
  signal Mcount_v_pos_cy_16_rt_1450 : STD_LOGIC; 
  signal Mcount_v_pos_cy_17_rt_1452 : STD_LOGIC; 
  signal Mcount_v_pos_cy_18_rt_1454 : STD_LOGIC; 
  signal Mcount_v_pos_cy_19_rt_1456 : STD_LOGIC; 
  signal Mcount_v_pos_cy_1_rt_1458 : STD_LOGIC; 
  signal Mcount_v_pos_cy_20_rt_1460 : STD_LOGIC; 
  signal Mcount_v_pos_cy_21_rt_1462 : STD_LOGIC; 
  signal Mcount_v_pos_cy_22_rt_1464 : STD_LOGIC; 
  signal Mcount_v_pos_cy_23_rt_1466 : STD_LOGIC; 
  signal Mcount_v_pos_cy_24_rt_1468 : STD_LOGIC; 
  signal Mcount_v_pos_cy_25_rt_1470 : STD_LOGIC; 
  signal Mcount_v_pos_cy_26_rt_1472 : STD_LOGIC; 
  signal Mcount_v_pos_cy_27_rt_1474 : STD_LOGIC; 
  signal Mcount_v_pos_cy_28_rt_1476 : STD_LOGIC; 
  signal Mcount_v_pos_cy_29_rt_1478 : STD_LOGIC; 
  signal Mcount_v_pos_cy_2_rt_1480 : STD_LOGIC; 
  signal Mcount_v_pos_cy_30_rt_1482 : STD_LOGIC; 
  signal Mcount_v_pos_cy_3_rt_1484 : STD_LOGIC; 
  signal Mcount_v_pos_cy_4_rt_1486 : STD_LOGIC; 
  signal Mcount_v_pos_cy_5_rt_1488 : STD_LOGIC; 
  signal Mcount_v_pos_cy_6_rt_1490 : STD_LOGIC; 
  signal Mcount_v_pos_cy_7_rt_1492 : STD_LOGIC; 
  signal Mcount_v_pos_cy_8_rt_1494 : STD_LOGIC; 
  signal Mcount_v_pos_cy_9_rt_1496 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_0 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_1 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_10 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_11 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_12 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_13 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_14 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_15 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_16 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_17 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_18 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_19 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_2 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_20 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_21 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_22 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_23 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_24 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_25 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_26 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_27 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_28 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_29 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_3 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_30 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_31 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_4 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_5 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_6 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_7 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_8 : STD_LOGIC; 
  signal Mcount_v_pos_eqn_9 : STD_LOGIC; 
  signal Mcount_v_pos_xor_31_rt_1530 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Result_0_3 : STD_LOGIC; 
  signal Result_0_4 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_10_2 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_11_2 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_12_2 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_13_2 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_14_2 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_15_2 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_16_2 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_17_2 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_18_2 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_19_2 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_1_3 : STD_LOGIC; 
  signal Result_1_4 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_20_2 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_21_2 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_22_2 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_23_2 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal Result_24_2 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_25_2 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_26_2 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_27_2 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_28_2 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal Result_29_2 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_2_3 : STD_LOGIC; 
  signal Result_2_4 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_30_2 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_31_2 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Result_3_3 : STD_LOGIC; 
  signal Result_3_4 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_4_2 : STD_LOGIC; 
  signal Result_4_3 : STD_LOGIC; 
  signal Result_4_4 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_5_2 : STD_LOGIC; 
  signal Result_5_3 : STD_LOGIC; 
  signal Result_5_4 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Result_6_3 : STD_LOGIC; 
  signal Result_6_4 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_7_2 : STD_LOGIC; 
  signal Result_7_3 : STD_LOGIC; 
  signal Result_7_4 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_8_2 : STD_LOGIC; 
  signal Result_8_3 : STD_LOGIC; 
  signal Result_8_4 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_9_2 : STD_LOGIC; 
  signal Rout_0_1702 : STD_LOGIC; 
  signal Rout_5_1703 : STD_LOGIC; 
  signal Rout_and0006 : STD_LOGIC; 
  signal Rout_and0013 : STD_LOGIC; 
  signal Rout_and0014 : STD_LOGIC; 
  signal Rout_cmp_ge0000 : STD_LOGIC; 
  signal Rout_cmp_ge0001 : STD_LOGIC; 
  signal Rout_cmp_ge0002 : STD_LOGIC; 
  signal Rout_cmp_ge0003 : STD_LOGIC; 
  signal Rout_cmp_ge0004 : STD_LOGIC; 
  signal Rout_cmp_ge0005 : STD_LOGIC; 
  signal Rout_cmp_ge0006 : STD_LOGIC; 
  signal Rout_cmp_ge0007 : STD_LOGIC; 
  signal Rout_cmp_ge0008 : STD_LOGIC; 
  signal Rout_cmp_ge0009 : STD_LOGIC; 
  signal Rout_cmp_ge0010 : STD_LOGIC; 
  signal Rout_cmp_ge0011 : STD_LOGIC; 
  signal Rout_cmp_le0000 : STD_LOGIC; 
  signal Rout_cmp_le0001 : STD_LOGIC; 
  signal Rout_cmp_le0002 : STD_LOGIC; 
  signal Rout_cmp_le0003 : STD_LOGIC; 
  signal Rout_cmp_le0004 : STD_LOGIC; 
  signal Rout_cmp_le0005 : STD_LOGIC; 
  signal Rout_cmp_le0006 : STD_LOGIC; 
  signal Rout_cmp_le0007 : STD_LOGIC; 
  signal Rout_cmp_le0008 : STD_LOGIC; 
  signal Rout_cmp_le0009 : STD_LOGIC; 
  signal Rout_cmp_le0010 : STD_LOGIC; 
  signal Rout_cmp_le0011 : STD_LOGIC; 
  signal SW0_IBUF_1734 : STD_LOGIC; 
  signal SW1_IBUF_1736 : STD_LOGIC; 
  signal ball_pos_v1_and0000 : STD_LOGIC; 
  signal ball_pos_v1_and0000124_1812 : STD_LOGIC; 
  signal ball_pos_v1_and0000151_1813 : STD_LOGIC; 
  signal ball_pos_v1_and0000157_1814 : STD_LOGIC; 
  signal ball_pos_v1_and0000166_1815 : STD_LOGIC; 
  signal ball_pos_v1_and000018_1816 : STD_LOGIC; 
  signal ball_pos_v1_cmp_ge000014_1817 : STD_LOGIC; 
  signal ball_pos_v1_cmp_ge00002 : STD_LOGIC; 
  signal ball_pos_v1_cmp_le0001 : STD_LOGIC; 
  signal ball_pos_v1_cmp_le0001232 : STD_LOGIC; 
  signal ball_pos_v1_or0002 : STD_LOGIC; 
  signal ball_speedx_and0000 : STD_LOGIC; 
  signal ball_speedx_and00000_1832 : STD_LOGIC; 
  signal ball_speedx_and00001112_1833 : STD_LOGIC; 
  signal ball_speedx_and00001128_1834 : STD_LOGIC; 
  signal ball_speedx_and0000118_1835 : STD_LOGIC; 
  signal ball_speedx_and000016_1836 : STD_LOGIC; 
  signal ball_speedx_and000037_1837 : STD_LOGIC; 
  signal ball_speedx_cmp_ge0001 : STD_LOGIC; 
  signal ball_speedx_cmp_ge000124 : STD_LOGIC; 
  signal ball_speedx_cmp_ge0002 : STD_LOGIC; 
  signal ball_speedx_cmp_ge0003 : STD_LOGIC; 
  signal ball_speedx_cmp_gt0000 : STD_LOGIC; 
  signal ball_speedx_cmp_gt000023_1843 : STD_LOGIC; 
  signal ball_speedx_cmp_gt0001 : STD_LOGIC; 
  signal ball_speedx_cmp_le0001 : STD_LOGIC; 
  signal ball_speedx_cmp_le0001212_1846 : STD_LOGIC; 
  signal ball_speedx_cmp_le000123 : STD_LOGIC; 
  signal ball_speedx_cmp_le0002 : STD_LOGIC; 
  signal ball_speedx_cmp_le0003 : STD_LOGIC; 
  signal ball_speedx_cmp_le0003217_1850 : STD_LOGIC; 
  signal ball_speedx_cmp_le000323_1851 : STD_LOGIC; 
  signal ball_speedx_cmp_le0004 : STD_LOGIC; 
  signal ball_speedx_cmp_le0005 : STD_LOGIC; 
  signal ball_speedx_mux0000_0_122_1855 : STD_LOGIC; 
  signal ball_speedx_mux0000_0_16_1856 : STD_LOGIC; 
  signal ball_speedx_mux0000_0_2_1857 : STD_LOGIC; 
  signal ball_speedx_mux0000_0_22_1858 : STD_LOGIC; 
  signal ball_speedx_mux0000_0_58_1859 : STD_LOGIC; 
  signal ball_speedy_and0000 : STD_LOGIC; 
  signal ball_speedy_and0000103_1862 : STD_LOGIC; 
  signal ball_speedy_and0000116_1863 : STD_LOGIC; 
  signal ball_speedy_and000019_1864 : STD_LOGIC; 
  signal ball_speedy_and000049_1865 : STD_LOGIC; 
  signal ball_speedy_and000062_1866 : STD_LOGIC; 
  signal ball_speedy_and000064_1867 : STD_LOGIC; 
  signal ball_speedy_and000069_1868 : STD_LOGIC; 
  signal ball_speedy_and000090_1869 : STD_LOGIC; 
  signal ball_speedy_cmp_le0001 : STD_LOGIC; 
  signal ball_speedy_cmp_le0001_INV : STD_LOGIC; 
  signal clk_BUFGP_1873 : STD_LOGIC; 
  signal clk_half_1874 : STD_LOGIC; 
  signal clk_half1 : STD_LOGIC; 
  signal h_pos_cmp_eq0000 : STD_LOGIC; 
  signal h_sync_OBUF_1925 : STD_LOGIC; 
  signal h_sync_cmp_le0000 : STD_LOGIC; 
  signal h_sync_or0000 : STD_LOGIC; 
  signal increment_cmp_eq0000 : STD_LOGIC; 
  signal out_clk_half_OBUF_1977 : STD_LOGIC; 
  signal paddle_v1_and0000 : STD_LOGIC; 
  signal paddle_v1_and000013_1988 : STD_LOGIC; 
  signal paddle_v1_and000023_1989 : STD_LOGIC; 
  signal paddle_v1_cmp_lt0000115_1990 : STD_LOGIC; 
  signal paddle_v1_cmp_lt0000133_1991 : STD_LOGIC; 
  signal paddle_v1_cmp_lt00002 : STD_LOGIC; 
  signal paddle_v1_not0001_inv : STD_LOGIC; 
  signal paddle_v2_and0000 : STD_LOGIC; 
  signal paddle_v2_and000013_2004 : STD_LOGIC; 
  signal paddle_v2_and000023_2005 : STD_LOGIC; 
  signal paddle_v2_cmp_lt0000115_2006 : STD_LOGIC; 
  signal paddle_v2_cmp_lt0000133_2007 : STD_LOGIC; 
  signal paddle_v2_cmp_lt00002 : STD_LOGIC; 
  signal paddle_v2_not0001_inv : STD_LOGIC; 
  signal rst_IBUF_2011 : STD_LOGIC; 
  signal rst_inv : STD_LOGIC; 
  signal v_pos_cmp_eq0000 : STD_LOGIC; 
  signal v_sync_OBUF_2062 : STD_LOGIC; 
  signal v_sync_cmp_le0000 : STD_LOGIC; 
  signal v_sync_or0000 : STD_LOGIC; 
  signal video_on_2065 : STD_LOGIC; 
  signal video_on_and0000 : STD_LOGIC; 
  signal video_on_cmp_le0000 : STD_LOGIC; 
  signal video_on_cmp_le0001 : STD_LOGIC; 
  signal Gout_mux0017 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal Maccum_paddle_v1_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Maccum_paddle_v1_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Maccum_paddle_v2_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Maccum_paddle_v2_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Madd_add0000_add0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Madd_add0001_add0000_cy : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal Madd_add0001_add0000_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal Madd_ball_pos_h1_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal Madd_ball_pos_h1_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Madd_ball_pos_v1_addsub0000_cy : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal Madd_ball_pos_v1_addsub0000_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal Mcompar_Rout_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 13 downto 1 ); 
  signal Mcompar_Rout_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0006_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0006_lut : STD_LOGIC_VECTOR ( 16 downto 1 ); 
  signal Mcompar_Rout_cmp_ge0007_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0007_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0009_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0009_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0011_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0011_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_Rout_cmp_le0006_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_Rout_cmp_le0006_lut : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal Mcompar_Rout_cmp_le0007_cy : STD_LOGIC_VECTOR ( 14 downto 1 ); 
  signal Mcompar_Rout_cmp_le0007_lut : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal Mcompar_Rout_cmp_le0009_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_Rout_cmp_le0009_lut : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal Mcompar_Rout_cmp_le0011_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_Rout_cmp_le0011_lut : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal Mcompar_ball_speedx_cmp_ge0002_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcompar_ball_speedx_cmp_ge0002_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcompar_ball_speedx_cmp_ge0003_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcompar_ball_speedx_cmp_ge0003_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcompar_ball_speedx_cmp_le0002_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_ball_speedx_cmp_le0002_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal Mcompar_ball_speedx_cmp_le0004_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_ball_speedx_cmp_le0004_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal Mcompar_video_on_cmp_le0000_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Mcompar_video_on_cmp_le0000_lut : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal Mcompar_video_on_cmp_le0001_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal Mcompar_video_on_cmp_le0001_lut : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal Mcount_h_pos_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_h_pos_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_increment_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_increment_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_v_pos_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_v_pos_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Rout_mux0016 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal add0000_add0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal add0001_add0000 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal add0002_addsub0000 : STD_LOGIC_VECTOR ( 8 downto 2 ); 
  signal add0003_addsub0000 : STD_LOGIC_VECTOR ( 8 downto 2 ); 
  signal ball_pos_h1 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal ball_pos_h1_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal ball_pos_h1_mux0000 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal ball_pos_v1 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal ball_pos_v1_addsub0000 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal ball_pos_v1_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ball_speedx : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal ball_speedx_mux0000 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ball_speedy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal h_pos : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal h_pos_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal h_pos_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal increment : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal increment_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal increment_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal paddle_v1 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal paddle_v2 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal v_pos : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal v_pos_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal v_pos_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => Madd_add0000_add0000_lut_0_Q
    );
  XST_VCC : VCC
    port map (
      P => Madd_add0000_add0000_cy(0)
    );
  out_clk_half_3 : FD
    port map (
      C => clk_BUFGP_1873,
      D => clk_half1,
      Q => out_clk_half_OBUF_1977
    );
  video_on : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => video_on_and0000,
      Q => video_on_2065
    );
  h_sync_5 : FDC
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => h_sync_or0000,
      Q => h_sync_OBUF_1925
    );
  Rout_0 : FDC
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Rout_mux0016(1),
      Q => Rout_0_1702
    );
  Rout_5 : FDC
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Rout_mux0016(0),
      Q => Rout_5_1703
    );
  ball_pos_v1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_v1_mux0000(7),
      Q => ball_pos_v1(1)
    );
  ball_pos_v1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_v1_mux0000(6),
      Q => ball_pos_v1(2)
    );
  ball_pos_v1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_v1_mux0000(5),
      Q => ball_pos_v1(3)
    );
  ball_pos_v1_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_v1_mux0000(4),
      Q => ball_pos_v1(4)
    );
  ball_pos_v1_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_v1_mux0000(3),
      Q => ball_pos_v1(5)
    );
  ball_pos_v1_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_v1_mux0000(2),
      Q => ball_pos_v1(6)
    );
  ball_pos_v1_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_v1_mux0000(1),
      Q => ball_pos_v1(7)
    );
  ball_pos_v1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_v1_mux0000(0),
      Q => ball_pos_v1(8)
    );
  Bout_0 : FDC
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Bout_mux0016_4_Q,
      Q => Bout_0_8
    );
  Bout_4 : FDC
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Bout_mux0016_0_Q_10,
      Q => Bout_4_9
    );
  ball_speedx_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_speedx_and0000,
      D => ball_speedx_mux0000(0),
      Q => ball_speedx(2)
    );
  v_sync_19 : FDC
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => v_sync_or0000,
      Q => v_sync_OBUF_2062
    );
  ball_pos_h1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(8),
      Q => ball_pos_h1(1)
    );
  ball_pos_h1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(7),
      Q => ball_pos_h1(2)
    );
  ball_pos_h1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(6),
      Q => ball_pos_h1(3)
    );
  ball_pos_h1_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(5),
      Q => ball_pos_h1(4)
    );
  ball_pos_h1_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(4),
      Q => ball_pos_h1(5)
    );
  ball_pos_h1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(3),
      Q => ball_pos_h1(6)
    );
  ball_pos_h1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(2),
      Q => ball_pos_h1(7)
    );
  ball_pos_h1_8 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(1),
      Q => ball_pos_h1(8)
    );
  ball_pos_h1_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_pos_v1_and0000,
      D => ball_pos_h1_mux0000(0),
      Q => ball_pos_h1(9)
    );
  Gout_0 : FDC
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => N15,
      Q => Gout_0_21
    );
  Gout_5 : FDC
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Gout_mux0017(2),
      Q => Gout_5_22
    );
  ball_speedy_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => ball_speedy_and0000,
      D => ball_speedy_cmp_le0001_INV,
      Q => ball_speedy(2)
    );
  v_pos_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_0,
      Q => v_pos(0)
    );
  v_pos_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_1,
      Q => v_pos(1)
    );
  v_pos_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_2,
      Q => v_pos(2)
    );
  v_pos_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_3,
      Q => v_pos(3)
    );
  v_pos_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_4,
      Q => v_pos(4)
    );
  v_pos_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_5,
      Q => v_pos(5)
    );
  v_pos_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_6,
      Q => v_pos(6)
    );
  v_pos_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_7,
      Q => v_pos(7)
    );
  v_pos_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_8,
      Q => v_pos(8)
    );
  v_pos_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_9,
      Q => v_pos(9)
    );
  v_pos_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_10,
      Q => v_pos(10)
    );
  v_pos_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_11,
      Q => v_pos(11)
    );
  v_pos_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_12,
      Q => v_pos(12)
    );
  v_pos_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_13,
      Q => v_pos(13)
    );
  v_pos_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_14,
      Q => v_pos(14)
    );
  v_pos_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_15,
      Q => v_pos(15)
    );
  v_pos_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_16,
      Q => v_pos(16)
    );
  v_pos_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_17,
      Q => v_pos(17)
    );
  v_pos_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_18,
      Q => v_pos(18)
    );
  v_pos_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_19,
      Q => v_pos(19)
    );
  v_pos_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_20,
      Q => v_pos(20)
    );
  v_pos_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_21,
      Q => v_pos(21)
    );
  v_pos_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_22,
      Q => v_pos(22)
    );
  v_pos_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_23,
      Q => v_pos(23)
    );
  v_pos_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_24,
      Q => v_pos(24)
    );
  v_pos_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_25,
      Q => v_pos(25)
    );
  v_pos_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_26,
      Q => v_pos(26)
    );
  v_pos_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_27,
      Q => v_pos(27)
    );
  v_pos_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_28,
      Q => v_pos(28)
    );
  v_pos_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_29,
      Q => v_pos(29)
    );
  v_pos_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_30,
      Q => v_pos(30)
    );
  v_pos_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => h_pos_cmp_eq0000,
      CLR => rst_IBUF_2011,
      D => Mcount_v_pos_eqn_31,
      Q => v_pos(31)
    );
  h_pos_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_0,
      Q => h_pos(0)
    );
  h_pos_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_1,
      Q => h_pos(1)
    );
  h_pos_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_2,
      Q => h_pos(2)
    );
  h_pos_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_3,
      Q => h_pos(3)
    );
  h_pos_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_4,
      Q => h_pos(4)
    );
  h_pos_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_5,
      Q => h_pos(5)
    );
  h_pos_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_6,
      Q => h_pos(6)
    );
  h_pos_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_7,
      Q => h_pos(7)
    );
  h_pos_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_8,
      Q => h_pos(8)
    );
  h_pos_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_9,
      Q => h_pos(9)
    );
  h_pos_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_10,
      Q => h_pos(10)
    );
  h_pos_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_11,
      Q => h_pos(11)
    );
  h_pos_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_12,
      Q => h_pos(12)
    );
  h_pos_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_13,
      Q => h_pos(13)
    );
  h_pos_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_14,
      Q => h_pos(14)
    );
  h_pos_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_15,
      Q => h_pos(15)
    );
  h_pos_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_16,
      Q => h_pos(16)
    );
  h_pos_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_17,
      Q => h_pos(17)
    );
  h_pos_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_18,
      Q => h_pos(18)
    );
  h_pos_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_19,
      Q => h_pos(19)
    );
  h_pos_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_20,
      Q => h_pos(20)
    );
  h_pos_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_21,
      Q => h_pos(21)
    );
  h_pos_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_22,
      Q => h_pos(22)
    );
  h_pos_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_23,
      Q => h_pos(23)
    );
  h_pos_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_24,
      Q => h_pos(24)
    );
  h_pos_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_25,
      Q => h_pos(25)
    );
  h_pos_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_26,
      Q => h_pos(26)
    );
  h_pos_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_27,
      Q => h_pos(27)
    );
  h_pos_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_28,
      Q => h_pos(28)
    );
  h_pos_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_29,
      Q => h_pos(29)
    );
  h_pos_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_30,
      Q => h_pos(30)
    );
  h_pos_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CLR => rst_IBUF_2011,
      D => Mcount_h_pos_eqn_31,
      Q => h_pos(31)
    );
  increment_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_0,
      Q => increment(0)
    );
  increment_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_1,
      Q => increment(1)
    );
  increment_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_2,
      Q => increment(2)
    );
  increment_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_3,
      Q => increment(3)
    );
  increment_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_4,
      Q => increment(4)
    );
  increment_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_5,
      Q => increment(5)
    );
  increment_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_6,
      Q => increment(6)
    );
  increment_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_7,
      Q => increment(7)
    );
  increment_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_8,
      Q => increment(8)
    );
  increment_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_9,
      Q => increment(9)
    );
  increment_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_10,
      Q => increment(10)
    );
  increment_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_11,
      Q => increment(11)
    );
  increment_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_12,
      Q => increment(12)
    );
  increment_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_13,
      Q => increment(13)
    );
  increment_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_14,
      Q => increment(14)
    );
  increment_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_15,
      Q => increment(15)
    );
  increment_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_16,
      Q => increment(16)
    );
  increment_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_17,
      Q => increment(17)
    );
  increment_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_18,
      Q => increment(18)
    );
  increment_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_19,
      Q => increment(19)
    );
  increment_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_20,
      Q => increment(20)
    );
  increment_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_21,
      Q => increment(21)
    );
  increment_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_22,
      Q => increment(22)
    );
  increment_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_23,
      Q => increment(23)
    );
  increment_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_24,
      Q => increment(24)
    );
  increment_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_25,
      Q => increment(25)
    );
  increment_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_26,
      Q => increment(26)
    );
  increment_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_27,
      Q => increment(27)
    );
  increment_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_28,
      Q => increment(28)
    );
  increment_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_29,
      Q => increment(29)
    );
  increment_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_30,
      Q => increment(30)
    );
  increment_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => rst_inv,
      D => Mcount_increment_eqn_31,
      Q => increment(31)
    );
  paddle_v1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_0_3,
      Q => paddle_v1(0)
    );
  paddle_v1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_1_3,
      Q => paddle_v1(1)
    );
  paddle_v1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_2_3,
      Q => paddle_v1(2)
    );
  paddle_v1_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_3_3,
      Q => paddle_v1(3)
    );
  paddle_v1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_4_3,
      Q => paddle_v1(4)
    );
  paddle_v1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_5_3,
      Q => paddle_v1(5)
    );
  paddle_v1_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_6_3,
      Q => paddle_v1(6)
    );
  paddle_v1_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_7_3,
      Q => paddle_v1(7)
    );
  paddle_v1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v1_and0000,
      D => Result_8_3,
      Q => paddle_v1(8)
    );
  paddle_v2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_0_4,
      Q => paddle_v2(0)
    );
  paddle_v2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_1_4,
      Q => paddle_v2(1)
    );
  paddle_v2_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_2_4,
      Q => paddle_v2(2)
    );
  paddle_v2_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_3_4,
      Q => paddle_v2(3)
    );
  paddle_v2_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_4_4,
      Q => paddle_v2(4)
    );
  paddle_v2_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_5_4,
      Q => paddle_v2(5)
    );
  paddle_v2_6 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_6_4,
      Q => paddle_v2(6)
    );
  paddle_v2_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_7_4,
      Q => paddle_v2(7)
    );
  paddle_v2_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_half_1874,
      CE => paddle_v2_and0000,
      D => Result_8_4,
      Q => paddle_v2(8)
    );
  Madd_add0000_add0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0000_add0000_cy_1_rt_67,
      O => Madd_add0000_add0000_cy(1)
    );
  Madd_add0000_add0000_xor_1_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      LI => Madd_add0000_add0000_cy_1_rt_67,
      O => add0000_add0000(1)
    );
  Madd_add0000_add0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(1),
      DI => Madd_add0000_add0000_cy(0),
      S => Madd_add0000_add0000_lut_2_Q,
      O => Madd_add0000_add0000_cy(2)
    );
  Madd_add0000_add0000_xor_2_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(1),
      LI => Madd_add0000_add0000_lut_2_Q,
      O => add0000_add0000(2)
    );
  Madd_add0000_add0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0000_add0000_cy_3_rt_70,
      O => Madd_add0000_add0000_cy(3)
    );
  Madd_add0000_add0000_xor_3_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(2),
      LI => Madd_add0000_add0000_cy_3_rt_70,
      O => add0000_add0000(3)
    );
  Madd_add0000_add0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0000_add0000_cy_4_rt_72,
      O => Madd_add0000_add0000_cy(4)
    );
  Madd_add0000_add0000_xor_4_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(3),
      LI => Madd_add0000_add0000_cy_4_rt_72,
      O => add0000_add0000(4)
    );
  Madd_add0000_add0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0000_add0000_cy_5_rt_74,
      O => Madd_add0000_add0000_cy(5)
    );
  Madd_add0000_add0000_xor_5_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(4),
      LI => Madd_add0000_add0000_cy_5_rt_74,
      O => add0000_add0000(5)
    );
  Madd_add0000_add0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0000_add0000_cy_6_rt_76,
      O => Madd_add0000_add0000_cy(6)
    );
  Madd_add0000_add0000_xor_6_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(5),
      LI => Madd_add0000_add0000_cy_6_rt_76,
      O => add0000_add0000(6)
    );
  Madd_add0000_add0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0000_add0000_cy_7_rt_78,
      O => Madd_add0000_add0000_cy(7)
    );
  Madd_add0000_add0000_xor_7_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(6),
      LI => Madd_add0000_add0000_cy_7_rt_78,
      O => add0000_add0000(7)
    );
  Madd_add0000_add0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(7),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0000_add0000_cy_8_rt_80,
      O => Madd_add0000_add0000_cy(8)
    );
  Madd_add0000_add0000_xor_8_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(7),
      LI => Madd_add0000_add0000_cy_8_rt_80,
      O => add0000_add0000(8)
    );
  Madd_add0000_add0000_xor_9_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_cy(8),
      LI => Madd_add0000_add0000_xor_9_rt_83,
      O => add0000_add0000(9)
    );
  Madd_add0001_add0000_xor_1_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      LI => Madd_add0001_add0000_xor_1_rt_96,
      O => add0001_add0000(1)
    );
  Madd_add0001_add0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      DI => Madd_add0000_add0000_cy(0),
      S => Madd_add0001_add0000_lut(2),
      O => Madd_add0001_add0000_cy(2)
    );
  Madd_add0001_add0000_xor_2_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      LI => Madd_add0001_add0000_lut(2),
      O => add0001_add0000(2)
    );
  Madd_add0001_add0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_add0001_add0000_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0001_add0000_cy_3_rt_86,
      O => Madd_add0001_add0000_cy(3)
    );
  Madd_add0001_add0000_xor_3_Q : XORCY
    port map (
      CI => Madd_add0001_add0000_cy(2),
      LI => Madd_add0001_add0000_cy_3_rt_86,
      O => add0001_add0000(3)
    );
  Madd_add0001_add0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_add0001_add0000_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0001_add0000_cy_4_rt_88,
      O => Madd_add0001_add0000_cy(4)
    );
  Madd_add0001_add0000_xor_4_Q : XORCY
    port map (
      CI => Madd_add0001_add0000_cy(3),
      LI => Madd_add0001_add0000_cy_4_rt_88,
      O => add0001_add0000(4)
    );
  Madd_add0001_add0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_add0001_add0000_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0001_add0000_cy_5_rt_90,
      O => Madd_add0001_add0000_cy(5)
    );
  Madd_add0001_add0000_xor_5_Q : XORCY
    port map (
      CI => Madd_add0001_add0000_cy(4),
      LI => Madd_add0001_add0000_cy_5_rt_90,
      O => add0001_add0000(5)
    );
  Madd_add0001_add0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_add0001_add0000_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0001_add0000_cy_6_rt_92,
      O => Madd_add0001_add0000_cy(6)
    );
  Madd_add0001_add0000_xor_6_Q : XORCY
    port map (
      CI => Madd_add0001_add0000_cy(5),
      LI => Madd_add0001_add0000_cy_6_rt_92,
      O => add0001_add0000(6)
    );
  Madd_add0001_add0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_add0001_add0000_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0001_add0000_cy_7_rt_94,
      O => Madd_add0001_add0000_cy(7)
    );
  Madd_add0001_add0000_xor_7_Q : XORCY
    port map (
      CI => Madd_add0001_add0000_cy(6),
      LI => Madd_add0001_add0000_cy_7_rt_94,
      O => add0001_add0000(7)
    );
  Madd_add0001_add0000_xor_8_Q : XORCY
    port map (
      CI => Madd_add0001_add0000_cy(7),
      LI => Madd_add0001_add0000_xor_8_rt_97,
      O => add0001_add0000(8)
    );
  Madd_ball_pos_v1_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      DI => Madd_add0000_add0000_cy(0),
      S => Madd_ball_pos_v1_addsub0000_lut(1),
      O => Madd_ball_pos_v1_addsub0000_cy(1)
    );
  Madd_ball_pos_v1_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      LI => Madd_ball_pos_v1_addsub0000_lut(1),
      O => ball_pos_v1_addsub0000(1)
    );
  Madd_ball_pos_v1_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(2),
      I1 => ball_speedy(2),
      O => Madd_ball_pos_v1_addsub0000_lut(2)
    );
  Madd_ball_pos_v1_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(1),
      DI => ball_pos_v1(2),
      S => Madd_ball_pos_v1_addsub0000_lut(2),
      O => Madd_ball_pos_v1_addsub0000_cy(2)
    );
  Madd_ball_pos_v1_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(1),
      LI => Madd_ball_pos_v1_addsub0000_lut(2),
      O => ball_pos_v1_addsub0000(2)
    );
  Madd_ball_pos_v1_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(3),
      I1 => ball_speedy(2),
      O => Madd_ball_pos_v1_addsub0000_lut(3)
    );
  Madd_ball_pos_v1_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(2),
      DI => ball_pos_v1(3),
      S => Madd_ball_pos_v1_addsub0000_lut(3),
      O => Madd_ball_pos_v1_addsub0000_cy(3)
    );
  Madd_ball_pos_v1_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(2),
      LI => Madd_ball_pos_v1_addsub0000_lut(3),
      O => ball_pos_v1_addsub0000(3)
    );
  Madd_ball_pos_v1_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(4),
      I1 => ball_speedy(2),
      O => Madd_ball_pos_v1_addsub0000_lut(4)
    );
  Madd_ball_pos_v1_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(3),
      DI => ball_pos_v1(4),
      S => Madd_ball_pos_v1_addsub0000_lut(4),
      O => Madd_ball_pos_v1_addsub0000_cy(4)
    );
  Madd_ball_pos_v1_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(3),
      LI => Madd_ball_pos_v1_addsub0000_lut(4),
      O => ball_pos_v1_addsub0000(4)
    );
  Madd_ball_pos_v1_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(5),
      I1 => ball_speedy(2),
      O => Madd_ball_pos_v1_addsub0000_lut(5)
    );
  Madd_ball_pos_v1_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(4),
      DI => ball_pos_v1(5),
      S => Madd_ball_pos_v1_addsub0000_lut(5),
      O => Madd_ball_pos_v1_addsub0000_cy(5)
    );
  Madd_ball_pos_v1_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(4),
      LI => Madd_ball_pos_v1_addsub0000_lut(5),
      O => ball_pos_v1_addsub0000(5)
    );
  Madd_ball_pos_v1_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(6),
      I1 => ball_speedy(2),
      O => Madd_ball_pos_v1_addsub0000_lut(6)
    );
  Madd_ball_pos_v1_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(5),
      DI => ball_pos_v1(6),
      S => Madd_ball_pos_v1_addsub0000_lut(6),
      O => Madd_ball_pos_v1_addsub0000_cy(6)
    );
  Madd_ball_pos_v1_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(5),
      LI => Madd_ball_pos_v1_addsub0000_lut(6),
      O => ball_pos_v1_addsub0000(6)
    );
  Madd_ball_pos_v1_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(7),
      I1 => ball_speedy(2),
      O => Madd_ball_pos_v1_addsub0000_lut(7)
    );
  Madd_ball_pos_v1_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(6),
      DI => ball_pos_v1(7),
      S => Madd_ball_pos_v1_addsub0000_lut(7),
      O => Madd_ball_pos_v1_addsub0000_cy(7)
    );
  Madd_ball_pos_v1_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(6),
      LI => Madd_ball_pos_v1_addsub0000_lut(7),
      O => ball_pos_v1_addsub0000(7)
    );
  Madd_ball_pos_v1_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(8),
      I1 => ball_speedy(2),
      O => Madd_ball_pos_v1_addsub0000_lut(8)
    );
  Madd_ball_pos_v1_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_ball_pos_v1_addsub0000_cy(7),
      LI => Madd_ball_pos_v1_addsub0000_lut(8),
      O => ball_pos_v1_addsub0000(8)
    );
  Mcompar_video_on_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut(0),
      O => Mcompar_video_on_cmp_le0001_cy(0)
    );
  Mcompar_video_on_cmp_le0001_lut_1_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => v_pos(6),
      I1 => v_pos(7),
      I2 => v_pos(8),
      O => Mcompar_video_on_cmp_le0001_lut(1)
    );
  Mcompar_video_on_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(0),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut(1),
      O => Mcompar_video_on_cmp_le0001_cy(1)
    );
  Mcompar_video_on_cmp_le0001_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_video_on_cmp_le0001_lut(2)
    );
  Mcompar_video_on_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut(2),
      O => Mcompar_video_on_cmp_le0001_cy(2)
    );
  Mcompar_video_on_cmp_le0001_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_video_on_cmp_le0001_lut(3)
    );
  Mcompar_video_on_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut(3),
      O => Mcompar_video_on_cmp_le0001_cy(3)
    );
  Mcompar_video_on_cmp_le0001_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_video_on_cmp_le0001_lut(4)
    );
  Mcompar_video_on_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut(4),
      O => Mcompar_video_on_cmp_le0001_cy(4)
    );
  Mcompar_video_on_cmp_le0001_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_video_on_cmp_le0001_lut(5)
    );
  Mcompar_video_on_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut(5),
      O => Mcompar_video_on_cmp_le0001_cy(5)
    );
  Mcompar_video_on_cmp_le0001_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_video_on_cmp_le0001_lut(6)
    );
  Mcompar_video_on_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut(6),
      O => Mcompar_video_on_cmp_le0001_cy(6)
    );
  Mcompar_video_on_cmp_le0001_lut_7_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut(7)
    );
  Mcompar_video_on_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut(7),
      O => Mcompar_video_on_cmp_le0001_cy(7)
    );
  Mcompar_video_on_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(7),
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut(8),
      O => video_on_cmp_le0001
    );
  Mcompar_video_on_cmp_le0001_lut_0_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_pos(0),
      I1 => v_pos(1),
      I2 => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_lut_0_1_1127
    );
  Mcompar_video_on_cmp_le0001_cy_0_0 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_1_1127,
      O => Mcompar_video_on_cmp_le0001_cy_0_1_982
    );
  Mcompar_video_on_cmp_le0001_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_1_982,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_0_rt_1017,
      O => Mcompar_video_on_cmp_le0001_cy_1_1_1006
    );
  Mcompar_video_on_cmp_le0001_lut_2_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(4),
      I1 => v_pos(5),
      O => Mcompar_video_on_cmp_le0001_lut_2_1_1158
    );
  Mcompar_video_on_cmp_le0001_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_1_1006,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_1_1158,
      O => Mcompar_video_on_cmp_le0001_cy_2_1_1027
    );
  Mcompar_video_on_cmp_le0001_lut_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(6),
      I1 => v_pos(7),
      O => Mcompar_video_on_cmp_le0001_lut_3_1_1170
    );
  Mcompar_video_on_cmp_le0001_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_1_1027,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_3_1_1170,
      O => Mcompar_video_on_cmp_le0001_cy_3_1_1039
    );
  Mcompar_video_on_cmp_le0001_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(8),
      I1 => v_pos(9),
      I2 => v_pos(10),
      I3 => v_pos(11),
      O => Mcompar_video_on_cmp_le0001_lut_4_1_1178
    );
  Mcompar_video_on_cmp_le0001_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_1_1039,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_1_1178,
      O => Mcompar_video_on_cmp_le0001_cy_4_1_1055
    );
  Mcompar_video_on_cmp_le0001_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(12),
      I1 => v_pos(13),
      I2 => v_pos(14),
      I3 => v_pos(15),
      O => Mcompar_video_on_cmp_le0001_lut_5_1_1189
    );
  Mcompar_video_on_cmp_le0001_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_1_1055,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_1_1189,
      O => Mcompar_video_on_cmp_le0001_cy_5_1_1068
    );
  Mcompar_video_on_cmp_le0001_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(16),
      I1 => v_pos(17),
      I2 => v_pos(18),
      I3 => v_pos(19),
      O => Mcompar_video_on_cmp_le0001_lut_6_1_1200
    );
  Mcompar_video_on_cmp_le0001_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_1_1068,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_1_1200,
      O => Mcompar_video_on_cmp_le0001_cy_6_1_1081
    );
  Mcompar_video_on_cmp_le0001_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(20),
      I1 => v_pos(21),
      I2 => v_pos(22),
      I3 => v_pos(23),
      O => Mcompar_video_on_cmp_le0001_lut_7_1_1212
    );
  Mcompar_video_on_cmp_le0001_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_1_1081,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_1_1212,
      O => Mcompar_video_on_cmp_le0001_cy_7_1_1093
    );
  Mcompar_video_on_cmp_le0001_lut_8_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(24),
      I1 => v_pos(25),
      I2 => v_pos(26),
      I3 => v_pos(27),
      O => Mcompar_video_on_cmp_le0001_lut_8_1_1224
    );
  Mcompar_video_on_cmp_le0001_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_1_1093,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_1_1224,
      O => Mcompar_video_on_cmp_le0001_cy(8)
    );
  Mcompar_video_on_cmp_le0001_lut_9_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_pos(28),
      I1 => v_pos(29),
      I2 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut(9)
    );
  Mcompar_video_on_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(8),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut(9),
      O => Mcompar_video_on_cmp_le0001_cy(9)
    );
  Mcompar_video_on_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(9),
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut(10),
      O => Rout_cmp_le0001
    );
  Mcompar_video_on_cmp_le0001_lut_0_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(0),
      I1 => v_pos(1),
      O => Mcompar_video_on_cmp_le0001_lut_0_2_1130
    );
  Mcompar_video_on_cmp_le0001_cy_0_1 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_2_1130,
      O => Mcompar_video_on_cmp_le0001_cy_0_2_985
    );
  Mcompar_video_on_cmp_le0001_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_2_985,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_1_rt_1019,
      O => Mcompar_video_on_cmp_le0001_cy_1_2_1009
    );
  Mcompar_video_on_cmp_le0001_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_2_1009,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_2,
      O => Mcompar_video_on_cmp_le0001_cy_2_2_1030
    );
  Mcompar_video_on_cmp_le0001_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_2_1030,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_3_1_rt_1050,
      O => Mcompar_video_on_cmp_le0001_cy_3_2_1042
    );
  Mcompar_video_on_cmp_le0001_lut_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(5),
      I1 => v_pos(6),
      I2 => v_pos(7),
      I3 => v_pos(8),
      O => Mcompar_video_on_cmp_le0001_lut_4_2_1180
    );
  Mcompar_video_on_cmp_le0001_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_2_1042,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_2_1180,
      O => Mcompar_video_on_cmp_le0001_cy_4_2_1058
    );
  Mcompar_video_on_cmp_le0001_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_video_on_cmp_le0001_lut_5_2_1191
    );
  Mcompar_video_on_cmp_le0001_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_2_1058,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_2_1191,
      O => Mcompar_video_on_cmp_le0001_cy_5_2_1071
    );
  Mcompar_video_on_cmp_le0001_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_video_on_cmp_le0001_lut_6_2_1203
    );
  Mcompar_video_on_cmp_le0001_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_2_1071,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_2_1203,
      O => Mcompar_video_on_cmp_le0001_cy_6_2_1084
    );
  Mcompar_video_on_cmp_le0001_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_video_on_cmp_le0001_lut_7_2_1215
    );
  Mcompar_video_on_cmp_le0001_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_2_1084,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_2_1215,
      O => Mcompar_video_on_cmp_le0001_cy_7_2_1096
    );
  Mcompar_video_on_cmp_le0001_lut_8_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_video_on_cmp_le0001_lut_8_2_1227
    );
  Mcompar_video_on_cmp_le0001_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_2_1096,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_2_1227,
      O => Mcompar_video_on_cmp_le0001_cy_8_1_1105
    );
  Mcompar_video_on_cmp_le0001_lut_9_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_video_on_cmp_le0001_lut_9_1_1236
    );
  Mcompar_video_on_cmp_le0001_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_1_1105,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_1_1236,
      O => Mcompar_video_on_cmp_le0001_cy_9_1_1116
    );
  Mcompar_video_on_cmp_le0001_lut_10_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_10_1_1139
    );
  Mcompar_video_on_cmp_le0001_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_1_1116,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_10_1_1139,
      O => Mcompar_video_on_cmp_le0001_cy(10)
    );
  Mcompar_video_on_cmp_le0001_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(10),
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut(11),
      O => Rout_cmp_le0003
    );
  Mcompar_video_on_cmp_le0001_cy_0_2 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_3,
      O => Mcompar_video_on_cmp_le0001_cy_0_3_986
    );
  Mcompar_video_on_cmp_le0001_lut_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(1),
      I1 => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_lut_1_1_1155
    );
  Mcompar_video_on_cmp_le0001_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_3_986,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_1_1_1155,
      O => Mcompar_video_on_cmp_le0001_cy_1_3_1010
    );
  Mcompar_video_on_cmp_le0001_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_3_1010,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_3,
      O => Mcompar_video_on_cmp_le0001_cy_2_3_1031
    );
  Mcompar_video_on_cmp_le0001_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_3_1031,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_3_2_rt_1051,
      O => Mcompar_video_on_cmp_le0001_cy_3_3_1043
    );
  Mcompar_video_on_cmp_le0001_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_3_1043,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_3,
      O => Mcompar_video_on_cmp_le0001_cy_4_3_1059
    );
  Mcompar_video_on_cmp_le0001_lut_5_3 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => v_pos(6),
      I1 => v_pos(7),
      I2 => v_pos(8),
      O => Mcompar_video_on_cmp_le0001_lut_5_3_1192
    );
  Mcompar_video_on_cmp_le0001_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_3_1059,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_5_3_1192,
      O => Mcompar_video_on_cmp_le0001_cy_5_3_1072
    );
  Mcompar_video_on_cmp_le0001_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_video_on_cmp_le0001_lut_6_3_1204
    );
  Mcompar_video_on_cmp_le0001_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_3_1072,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_3_1204,
      O => Mcompar_video_on_cmp_le0001_cy_6_3_1085
    );
  Mcompar_video_on_cmp_le0001_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_video_on_cmp_le0001_lut_7_3_1216
    );
  Mcompar_video_on_cmp_le0001_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_3_1085,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_3_1216,
      O => Mcompar_video_on_cmp_le0001_cy_7_3_1097
    );
  Mcompar_video_on_cmp_le0001_lut_8_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_video_on_cmp_le0001_lut_8_3_1228
    );
  Mcompar_video_on_cmp_le0001_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_3_1097,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_3_1228,
      O => Mcompar_video_on_cmp_le0001_cy_8_2_1107
    );
  Mcompar_video_on_cmp_le0001_lut_9_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_video_on_cmp_le0001_lut_9_2_1238
    );
  Mcompar_video_on_cmp_le0001_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_2_1107,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_2_1238,
      O => Mcompar_video_on_cmp_le0001_cy_9_2_1118
    );
  Mcompar_video_on_cmp_le0001_lut_10_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_video_on_cmp_le0001_lut_10_2_1140
    );
  Mcompar_video_on_cmp_le0001_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_2_1118,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_10_2_1140,
      O => Mcompar_video_on_cmp_le0001_cy_10_1_994
    );
  Mcompar_video_on_cmp_le0001_lut_11_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_11_1_1149
    );
  Mcompar_video_on_cmp_le0001_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_10_1_994,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_11_1_1149,
      O => Mcompar_video_on_cmp_le0001_cy(11)
    );
  Mcompar_video_on_cmp_le0001_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy(11),
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut(12),
      O => Rout_cmp_le0005
    );
  Mcompar_video_on_cmp_le0001_lut_0_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(1),
      I1 => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_lut_0_4_1132
    );
  Mcompar_video_on_cmp_le0001_cy_0_3 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_4_1132,
      O => Mcompar_video_on_cmp_le0001_cy_0_4_987
    );
  Mcompar_video_on_cmp_le0001_lut_1_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(3),
      I1 => v_pos(4),
      O => Mcompar_video_on_cmp_le0001_lut_1_2_1156
    );
  Mcompar_video_on_cmp_le0001_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_4_987,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_1_2_1156,
      O => Mcompar_video_on_cmp_le0001_cy_1_4_1011
    );
  Mcompar_video_on_cmp_le0001_lut_2_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(5),
      I1 => v_pos(6),
      I2 => v_pos(7),
      I3 => v_pos(8),
      O => Mcompar_video_on_cmp_le0001_lut_2_4_1163
    );
  Mcompar_video_on_cmp_le0001_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_4_1011,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_4_1163,
      O => Mcompar_video_on_cmp_le0001_cy_2_4_1032
    );
  Mcompar_video_on_cmp_le0001_lut_3_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_video_on_cmp_le0001_lut_3_2_1171
    );
  Mcompar_video_on_cmp_le0001_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_4_1032,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_3_2_1171,
      O => Mcompar_video_on_cmp_le0001_cy_3_4_1044
    );
  Mcompar_video_on_cmp_le0001_lut_4_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_video_on_cmp_le0001_lut_4_4_1182
    );
  Mcompar_video_on_cmp_le0001_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_4_1044,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_4_1182,
      O => Mcompar_video_on_cmp_le0001_cy_4_4_1060
    );
  Mcompar_video_on_cmp_le0001_lut_5_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_video_on_cmp_le0001_lut_5_4_1193
    );
  Mcompar_video_on_cmp_le0001_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_4_1060,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_4_1193,
      O => Mcompar_video_on_cmp_le0001_cy_5_4_1073
    );
  Mcompar_video_on_cmp_le0001_lut_6_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_video_on_cmp_le0001_lut_6_4_1205
    );
  Mcompar_video_on_cmp_le0001_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_4_1073,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_4_1205,
      O => Mcompar_video_on_cmp_le0001_cy_6_4_1086
    );
  Mcompar_video_on_cmp_le0001_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_video_on_cmp_le0001_lut_7_4_1217
    );
  Mcompar_video_on_cmp_le0001_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_4_1086,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_4_1217,
      O => Mcompar_video_on_cmp_le0001_cy_7_4_1098
    );
  Mcompar_video_on_cmp_le0001_lut_8_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_8_4_1229
    );
  Mcompar_video_on_cmp_le0001_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_4_1098,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_4_1229,
      O => Mcompar_video_on_cmp_le0001_cy_8_3_1108
    );
  Mcompar_video_on_cmp_le0001_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_3_1108,
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut_9_3,
      O => Mcompar_video_on_cmp_le0001_cy_9_3_1119
    );
  Mcompar_video_on_cmp_le0001_cy_0_4 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_5,
      O => Mcompar_video_on_cmp_le0001_cy_0_5_988
    );
  Mcompar_video_on_cmp_le0001_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_5_988,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_4_rt_1020,
      O => Mcompar_video_on_cmp_le0001_cy_1_5_1012
    );
  Mcompar_video_on_cmp_le0001_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_5_1012,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_5,
      O => Mcompar_video_on_cmp_le0001_cy_2_5_1033
    );
  Mcompar_video_on_cmp_le0001_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_5_1033,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_3_4_rt_1052,
      O => Mcompar_video_on_cmp_le0001_cy_3_5_1045
    );
  Mcompar_video_on_cmp_le0001_lut_4_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(8),
      I1 => v_pos(9),
      I2 => v_pos(10),
      I3 => v_pos(11),
      O => Mcompar_video_on_cmp_le0001_lut_4_5_1183
    );
  Mcompar_video_on_cmp_le0001_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_5_1045,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_5_1183,
      O => Mcompar_video_on_cmp_le0001_cy_4_5_1061
    );
  Mcompar_video_on_cmp_le0001_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(12),
      I1 => v_pos(13),
      I2 => v_pos(14),
      I3 => v_pos(15),
      O => Mcompar_video_on_cmp_le0001_lut_5_5_1194
    );
  Mcompar_video_on_cmp_le0001_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_5_1061,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_5_1194,
      O => Mcompar_video_on_cmp_le0001_cy_5_5_1074
    );
  Mcompar_video_on_cmp_le0001_lut_6_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(16),
      I1 => v_pos(17),
      I2 => v_pos(18),
      I3 => v_pos(19),
      O => Mcompar_video_on_cmp_le0001_lut_6_5_1206
    );
  Mcompar_video_on_cmp_le0001_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_5_1074,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_5_1206,
      O => Mcompar_video_on_cmp_le0001_cy_6_5_1087
    );
  Mcompar_video_on_cmp_le0001_lut_7_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(20),
      I1 => v_pos(21),
      I2 => v_pos(22),
      I3 => v_pos(23),
      O => Mcompar_video_on_cmp_le0001_lut_7_5_1218
    );
  Mcompar_video_on_cmp_le0001_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_5_1087,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_5_1218,
      O => Mcompar_video_on_cmp_le0001_cy_7_5_1099
    );
  Mcompar_video_on_cmp_le0001_lut_8_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(24),
      I1 => v_pos(25),
      I2 => v_pos(26),
      I3 => v_pos(27),
      O => Mcompar_video_on_cmp_le0001_lut_8_5_1230
    );
  Mcompar_video_on_cmp_le0001_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_5_1099,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_5_1230,
      O => Mcompar_video_on_cmp_le0001_cy_8_4_1109
    );
  Mcompar_video_on_cmp_le0001_lut_9_4 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_pos(28),
      I1 => v_pos(29),
      I2 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_9_4_1240
    );
  Mcompar_video_on_cmp_le0001_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_4_1109,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_4_1240,
      O => Mcompar_video_on_cmp_le0001_cy_9_4_1120
    );
  Mcompar_video_on_cmp_le0001_cy_10_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_4_1120,
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut_10_3,
      O => Mcompar_video_on_cmp_le0001_cy_10_2_995
    );
  Mcompar_video_on_cmp_le0001_lut_0_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(0),
      I1 => v_pos(1),
      O => Mcompar_video_on_cmp_le0001_lut_0_6_1134
    );
  Mcompar_video_on_cmp_le0001_cy_0_5 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_6_1134,
      O => Mcompar_video_on_cmp_le0001_cy_0_6_989
    );
  Mcompar_video_on_cmp_le0001_cy_1_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_6_989,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_5_rt_1021,
      O => Mcompar_video_on_cmp_le0001_cy_1_6_1013
    );
  Mcompar_video_on_cmp_le0001_lut_2_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(3),
      I1 => v_pos(4),
      O => Mcompar_video_on_cmp_le0001_lut_2_6_1165
    );
  Mcompar_video_on_cmp_le0001_cy_2_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_6_1013,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_6_1165,
      O => Mcompar_video_on_cmp_le0001_cy_2_6_1034
    );
  Mcompar_video_on_cmp_le0001_lut_3_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(5),
      I1 => v_pos(6),
      O => Mcompar_video_on_cmp_le0001_lut_3_3_1172
    );
  Mcompar_video_on_cmp_le0001_cy_3_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_6_1034,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_3_3_1172,
      O => Mcompar_video_on_cmp_le0001_cy_3_6_1046
    );
  Mcompar_video_on_cmp_le0001_lut_4_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(7),
      I1 => v_pos(8),
      I2 => v_pos(9),
      I3 => v_pos(10),
      O => Mcompar_video_on_cmp_le0001_lut_4_6_1184
    );
  Mcompar_video_on_cmp_le0001_cy_4_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_6_1046,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_6_1184,
      O => Mcompar_video_on_cmp_le0001_cy_4_6_1062
    );
  Mcompar_video_on_cmp_le0001_lut_5_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(11),
      I1 => v_pos(12),
      I2 => v_pos(13),
      I3 => v_pos(14),
      O => Mcompar_video_on_cmp_le0001_lut_5_6_1195
    );
  Mcompar_video_on_cmp_le0001_cy_5_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_6_1062,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_6_1195,
      O => Mcompar_video_on_cmp_le0001_cy_5_6_1075
    );
  Mcompar_video_on_cmp_le0001_lut_6_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(15),
      I1 => v_pos(16),
      I2 => v_pos(17),
      I3 => v_pos(18),
      O => Mcompar_video_on_cmp_le0001_lut_6_6_1207
    );
  Mcompar_video_on_cmp_le0001_cy_6_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_6_1075,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_6_1207,
      O => Mcompar_video_on_cmp_le0001_cy_6_6_1088
    );
  Mcompar_video_on_cmp_le0001_lut_7_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(19),
      I1 => v_pos(20),
      I2 => v_pos(21),
      I3 => v_pos(22),
      O => Mcompar_video_on_cmp_le0001_lut_7_6_1219
    );
  Mcompar_video_on_cmp_le0001_cy_7_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_6_1088,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_6_1219,
      O => Mcompar_video_on_cmp_le0001_cy_7_6_1100
    );
  Mcompar_video_on_cmp_le0001_lut_8_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(23),
      I1 => v_pos(24),
      I2 => v_pos(25),
      I3 => v_pos(26),
      O => Mcompar_video_on_cmp_le0001_lut_8_6_1231
    );
  Mcompar_video_on_cmp_le0001_cy_8_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_6_1100,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_6_1231,
      O => Mcompar_video_on_cmp_le0001_cy_8_5_1110
    );
  Mcompar_video_on_cmp_le0001_lut_9_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(27),
      I1 => v_pos(28),
      I2 => v_pos(29),
      I3 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_9_5_1241
    );
  Mcompar_video_on_cmp_le0001_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_5_1110,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_5_1241,
      O => Mcompar_video_on_cmp_le0001_cy_9_5_1121
    );
  Mcompar_video_on_cmp_le0001_cy_10_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_5_1121,
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut_10_4,
      O => Mcompar_video_on_cmp_le0001_cy_10_3_996
    );
  Mcompar_video_on_cmp_le0001_cy_0_6 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_7,
      O => Mcompar_video_on_cmp_le0001_cy_0_7_990
    );
  Mcompar_video_on_cmp_le0001_cy_1_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_7_990,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_6_rt_1022,
      O => Mcompar_video_on_cmp_le0001_cy_1_7_1014
    );
  Mcompar_video_on_cmp_le0001_cy_2_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_7_1014,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_7,
      O => Mcompar_video_on_cmp_le0001_cy_2_7_1035
    );
  Mcompar_video_on_cmp_le0001_lut_3_4 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => v_pos(3),
      I1 => v_pos(4),
      I2 => v_pos(5),
      I3 => v_pos(6),
      O => Mcompar_video_on_cmp_le0001_lut_3_4_1173
    );
  Mcompar_video_on_cmp_le0001_cy_3_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_7_1035,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_3_4_1173,
      O => Mcompar_video_on_cmp_le0001_cy_3_7_1047
    );
  Mcompar_video_on_cmp_le0001_cy_4_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_7_1047,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_4_6_rt_1066,
      O => Mcompar_video_on_cmp_le0001_cy_4_7_1063
    );
  Mcompar_video_on_cmp_le0001_lut_5_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(8),
      I1 => v_pos(9),
      I2 => v_pos(10),
      I3 => v_pos(11),
      O => Mcompar_video_on_cmp_le0001_lut_5_7_1196
    );
  Mcompar_video_on_cmp_le0001_cy_5_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_7_1063,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_7_1196,
      O => Mcompar_video_on_cmp_le0001_cy_5_7_1076
    );
  Mcompar_video_on_cmp_le0001_lut_6_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(12),
      I1 => v_pos(13),
      I2 => v_pos(14),
      I3 => v_pos(15),
      O => Mcompar_video_on_cmp_le0001_lut_6_7_1208
    );
  Mcompar_video_on_cmp_le0001_cy_6_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_7_1076,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_7_1208,
      O => Mcompar_video_on_cmp_le0001_cy_6_7_1089
    );
  Mcompar_video_on_cmp_le0001_lut_7_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(16),
      I1 => v_pos(17),
      I2 => v_pos(18),
      I3 => v_pos(19),
      O => Mcompar_video_on_cmp_le0001_lut_7_7_1220
    );
  Mcompar_video_on_cmp_le0001_cy_7_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_7_1089,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_7_1220,
      O => Mcompar_video_on_cmp_le0001_cy_7_7_1101
    );
  Mcompar_video_on_cmp_le0001_lut_8_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(20),
      I1 => v_pos(21),
      I2 => v_pos(22),
      I3 => v_pos(23),
      O => Mcompar_video_on_cmp_le0001_lut_8_7_1232
    );
  Mcompar_video_on_cmp_le0001_cy_8_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_7_1101,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_7_1232,
      O => Mcompar_video_on_cmp_le0001_cy_8_6_1111
    );
  Mcompar_video_on_cmp_le0001_lut_9_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(24),
      I1 => v_pos(25),
      I2 => v_pos(26),
      I3 => v_pos(27),
      O => Mcompar_video_on_cmp_le0001_lut_9_6_1242
    );
  Mcompar_video_on_cmp_le0001_cy_9_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_6_1111,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_6_1242,
      O => Mcompar_video_on_cmp_le0001_cy_9_6_1122
    );
  Mcompar_video_on_cmp_le0001_lut_10_5 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_pos(28),
      I1 => v_pos(29),
      I2 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_10_5_1143
    );
  Mcompar_video_on_cmp_le0001_cy_10_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_6_1122,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_10_5_1143,
      O => Mcompar_video_on_cmp_le0001_cy_10_4_997
    );
  Mcompar_video_on_cmp_le0001_cy_11_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_10_4_997,
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut_11_2,
      O => Mcompar_video_on_cmp_le0001_cy_11_1_1002
    );
  Mcompar_video_on_cmp_le0001_lut_0_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(0),
      I1 => v_pos(1),
      I2 => v_pos(2),
      I3 => v_pos(3),
      O => Mcompar_video_on_cmp_le0001_lut_0_8_1136
    );
  Mcompar_video_on_cmp_le0001_cy_0_7 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_8_1136,
      O => Mcompar_video_on_cmp_le0001_cy_0_8_991
    );
  Mcompar_video_on_cmp_le0001_cy_1_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_8_991,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_7_rt_1023,
      O => Mcompar_video_on_cmp_le0001_cy_1_8_1015
    );
  Mcompar_video_on_cmp_le0001_lut_2_8 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(5),
      I1 => v_pos(6),
      O => Mcompar_video_on_cmp_le0001_lut_2_8_1167
    );
  Mcompar_video_on_cmp_le0001_cy_2_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_8_1015,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_8_1167,
      O => Mcompar_video_on_cmp_le0001_cy_2_8_1036
    );
  Mcompar_video_on_cmp_le0001_lut_3_5 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(7),
      I1 => v_pos(8),
      O => Mcompar_video_on_cmp_le0001_lut_3_5_1174
    );
  Mcompar_video_on_cmp_le0001_cy_3_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_8_1036,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_3_5_1174,
      O => Mcompar_video_on_cmp_le0001_cy_3_8_1048
    );
  Mcompar_video_on_cmp_le0001_lut_4_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_video_on_cmp_le0001_lut_4_7_1185
    );
  Mcompar_video_on_cmp_le0001_cy_4_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_8_1048,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_7_1185,
      O => Mcompar_video_on_cmp_le0001_cy_4_8_1064
    );
  Mcompar_video_on_cmp_le0001_lut_5_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_video_on_cmp_le0001_lut_5_8_1197
    );
  Mcompar_video_on_cmp_le0001_cy_5_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_8_1064,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_8_1197,
      O => Mcompar_video_on_cmp_le0001_cy_5_8_1077
    );
  Mcompar_video_on_cmp_le0001_lut_6_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_video_on_cmp_le0001_lut_6_8_1209
    );
  Mcompar_video_on_cmp_le0001_cy_6_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_8_1077,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_8_1209,
      O => Mcompar_video_on_cmp_le0001_cy_6_8_1090
    );
  Mcompar_video_on_cmp_le0001_lut_7_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_video_on_cmp_le0001_lut_7_8_1221
    );
  Mcompar_video_on_cmp_le0001_cy_7_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_8_1090,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_8_1221,
      O => Mcompar_video_on_cmp_le0001_cy_7_8_1102
    );
  Mcompar_video_on_cmp_le0001_lut_8_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_video_on_cmp_le0001_lut_8_8_1233
    );
  Mcompar_video_on_cmp_le0001_cy_8_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_8_1102,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_8_1233,
      O => Mcompar_video_on_cmp_le0001_cy_8_7_1112
    );
  Mcompar_video_on_cmp_le0001_lut_9_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_9_7_1243
    );
  Mcompar_video_on_cmp_le0001_cy_9_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_7_1112,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_7_1243,
      O => Mcompar_video_on_cmp_le0001_cy_9_7_1123
    );
  Mcompar_video_on_cmp_le0001_cy_10_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_7_1123,
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut_10_6,
      O => Mcompar_video_on_cmp_le0001_cy_10_5_998
    );
  Mcompar_video_on_cmp_le0001_cy_0_8 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_9,
      O => Mcompar_video_on_cmp_le0001_cy_0_9_992
    );
  Mcompar_video_on_cmp_le0001_cy_1_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_9_992,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_8_rt_1024,
      O => Mcompar_video_on_cmp_le0001_cy_1_9_1016
    );
  Mcompar_video_on_cmp_le0001_lut_2_9 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_pos(3),
      I1 => v_pos(4),
      I2 => v_pos(5),
      O => Mcompar_video_on_cmp_le0001_lut_2_9_1168
    );
  Mcompar_video_on_cmp_le0001_cy_2_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_9_1016,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_9_1168,
      O => Mcompar_video_on_cmp_le0001_cy_2_9_1037
    );
  Mcompar_video_on_cmp_le0001_cy_3_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_9_1037,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_3_8_rt_1053,
      O => Mcompar_video_on_cmp_le0001_cy_3_9_1049
    );
  Mcompar_video_on_cmp_le0001_cy_4_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_9_1049,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_8,
      O => Mcompar_video_on_cmp_le0001_cy_4_9_1065
    );
  Mcompar_video_on_cmp_le0001_cy_5_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_9_1065,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_5_8_rt_1079,
      O => Mcompar_video_on_cmp_le0001_cy_5_9_1078
    );
  Mcompar_video_on_cmp_le0001_lut_6_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_video_on_cmp_le0001_lut_6_9_1210
    );
  Mcompar_video_on_cmp_le0001_cy_6_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_9_1078,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_9_1210,
      O => Mcompar_video_on_cmp_le0001_cy_6_9_1091
    );
  Mcompar_video_on_cmp_le0001_lut_7_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_video_on_cmp_le0001_lut_7_9_1222
    );
  Mcompar_video_on_cmp_le0001_cy_7_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_9_1091,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_9_1222,
      O => Mcompar_video_on_cmp_le0001_cy_7_9_1103
    );
  Mcompar_video_on_cmp_le0001_lut_8_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_video_on_cmp_le0001_lut_8_9_1234
    );
  Mcompar_video_on_cmp_le0001_cy_8_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_9_1103,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_9_1234,
      O => Mcompar_video_on_cmp_le0001_cy_8_8_1113
    );
  Mcompar_video_on_cmp_le0001_lut_9_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_video_on_cmp_le0001_lut_9_8_1244
    );
  Mcompar_video_on_cmp_le0001_cy_9_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_8_1113,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_8_1244,
      O => Mcompar_video_on_cmp_le0001_cy_9_8_1124
    );
  Mcompar_video_on_cmp_le0001_lut_10_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_video_on_cmp_le0001_lut_10_7_1145
    );
  Mcompar_video_on_cmp_le0001_cy_10_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_8_1124,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_10_7_1145,
      O => Mcompar_video_on_cmp_le0001_cy_10_6_999
    );
  Mcompar_video_on_cmp_le0001_lut_11_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_11_3_1151
    );
  Mcompar_video_on_cmp_le0001_cy_11_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_10_6_999,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_11_3_1151,
      O => Mcompar_video_on_cmp_le0001_cy_11_2_1003
    );
  Mcompar_video_on_cmp_le0001_cy_12_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_11_2_1003,
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut_12_1,
      O => Mcompar_video_on_cmp_le0001_cy(12)
    );
  Mcompar_video_on_cmp_le0001_cy_0_9 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_10,
      O => Mcompar_video_on_cmp_le0001_cy_0_10_983
    );
  Mcompar_video_on_cmp_le0001_cy_1_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_10_983,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_9_rt_1025,
      O => Mcompar_video_on_cmp_le0001_cy_1_10_1007
    );
  Mcompar_video_on_cmp_le0001_cy_2_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_10_1007,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_10,
      O => Mcompar_video_on_cmp_le0001_cy_2_10_1028
    );
  Mcompar_video_on_cmp_le0001_lut_3_6 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => v_pos(5),
      I1 => v_pos(6),
      I2 => v_pos(7),
      I3 => v_pos(8),
      O => Mcompar_video_on_cmp_le0001_lut_3_6_1175
    );
  Mcompar_video_on_cmp_le0001_cy_3_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_10_1028,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_3_6_1175,
      O => Mcompar_video_on_cmp_le0001_cy_3_10_1040
    );
  Mcompar_video_on_cmp_le0001_lut_4_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_video_on_cmp_le0001_lut_4_9_1187
    );
  Mcompar_video_on_cmp_le0001_cy_4_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_10_1040,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_9_1187,
      O => Mcompar_video_on_cmp_le0001_cy_4_10_1056
    );
  Mcompar_video_on_cmp_le0001_lut_5_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_video_on_cmp_le0001_lut_5_9_1198
    );
  Mcompar_video_on_cmp_le0001_cy_5_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_10_1056,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_9_1198,
      O => Mcompar_video_on_cmp_le0001_cy_5_10_1069
    );
  Mcompar_video_on_cmp_le0001_lut_6_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_video_on_cmp_le0001_lut_6_10_1201
    );
  Mcompar_video_on_cmp_le0001_cy_6_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_10_1069,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_10_1201,
      O => Mcompar_video_on_cmp_le0001_cy_6_10_1082
    );
  Mcompar_video_on_cmp_le0001_lut_7_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_video_on_cmp_le0001_lut_7_10_1213
    );
  Mcompar_video_on_cmp_le0001_cy_7_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_10_1082,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_10_1213,
      O => Mcompar_video_on_cmp_le0001_cy_7_10_1094
    );
  Mcompar_video_on_cmp_le0001_lut_8_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_video_on_cmp_le0001_lut_8_10_1225
    );
  Mcompar_video_on_cmp_le0001_cy_8_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_10_1094,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_10_1225,
      O => Mcompar_video_on_cmp_le0001_cy_8_9_1114
    );
  Mcompar_video_on_cmp_le0001_lut_9_9 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_9_9_1245
    );
  Mcompar_video_on_cmp_le0001_cy_9_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_9_1114,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_9_1245,
      O => Mcompar_video_on_cmp_le0001_cy_9_9_1125
    );
  Mcompar_video_on_cmp_le0001_cy_10_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_9_1125,
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut_10_8,
      O => Mcompar_video_on_cmp_le0001_cy_10_7_1000
    );
  Mcompar_video_on_cmp_le0001_lut_0_11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(1),
      I1 => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_lut_0_11_1129
    );
  Mcompar_video_on_cmp_le0001_cy_0_10 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_0_11_1129,
      O => Mcompar_video_on_cmp_le0001_cy_0_11
    );
  Mcompar_video_on_cmp_le0001_cy_1_10 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_0_11,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_cy_1_10_rt_1018,
      O => Mcompar_video_on_cmp_le0001_cy_1_11
    );
  Mcompar_video_on_cmp_le0001_cy_2_10 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_1_11,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_2_11,
      O => Mcompar_video_on_cmp_le0001_cy_2_11
    );
  Mcompar_video_on_cmp_le0001_lut_3_7 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => v_pos(5),
      I1 => v_pos(6),
      I2 => v_pos(7),
      I3 => v_pos(8),
      O => Mcompar_video_on_cmp_le0001_lut_3_7_1176
    );
  Mcompar_video_on_cmp_le0001_cy_3_10 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_2_11,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0001_lut_3_7_1176,
      O => Mcompar_video_on_cmp_le0001_cy_3_11
    );
  Mcompar_video_on_cmp_le0001_lut_4_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_video_on_cmp_le0001_lut_4_10_1179
    );
  Mcompar_video_on_cmp_le0001_cy_4_10 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_3_11,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_4_10_1179,
      O => Mcompar_video_on_cmp_le0001_cy_4_11
    );
  Mcompar_video_on_cmp_le0001_lut_5_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_video_on_cmp_le0001_lut_5_10_1190
    );
  Mcompar_video_on_cmp_le0001_cy_5_10 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_4_11,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_5_10_1190,
      O => Mcompar_video_on_cmp_le0001_cy_5_11
    );
  Mcompar_video_on_cmp_le0001_lut_6_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_video_on_cmp_le0001_lut_6_11_1202
    );
  Mcompar_video_on_cmp_le0001_cy_6_10 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_5_11,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_6_11_1202,
      O => Mcompar_video_on_cmp_le0001_cy_6_11
    );
  Mcompar_video_on_cmp_le0001_lut_7_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_video_on_cmp_le0001_lut_7_11_1214
    );
  Mcompar_video_on_cmp_le0001_cy_7_10 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_6_11,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_7_11_1214,
      O => Mcompar_video_on_cmp_le0001_cy_7_11
    );
  Mcompar_video_on_cmp_le0001_lut_8_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_video_on_cmp_le0001_lut_8_11_1226
    );
  Mcompar_video_on_cmp_le0001_cy_8_10 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_7_11,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_8_11_1226,
      O => Mcompar_video_on_cmp_le0001_cy_8_10_1106
    );
  Mcompar_video_on_cmp_le0001_lut_9_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_video_on_cmp_le0001_lut_9_10_1237
    );
  Mcompar_video_on_cmp_le0001_cy_9_9 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_8_10_1106,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0001_lut_9_10_1237,
      O => Mcompar_video_on_cmp_le0001_cy_9_10
    );
  Mcompar_video_on_cmp_le0001_cy_10_8 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0001_cy_9_10,
      DI => v_pos(31),
      S => Mcompar_video_on_cmp_le0001_lut_10_9,
      O => v_sync_cmp_le0000
    );
  Madd_ball_pos_h1_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      DI => Madd_add0000_add0000_cy(0),
      S => Madd_ball_pos_h1_addsub0000_lut(1),
      O => Madd_ball_pos_h1_addsub0000_cy(1)
    );
  Madd_ball_pos_h1_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      LI => Madd_ball_pos_h1_addsub0000_lut(1),
      O => ball_pos_h1_addsub0000(1)
    );
  Madd_ball_pos_h1_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_h1(2),
      I1 => ball_speedx(2),
      O => Madd_ball_pos_h1_addsub0000_lut(2)
    );
  Madd_ball_pos_h1_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(1),
      DI => ball_pos_h1(2),
      S => Madd_ball_pos_h1_addsub0000_lut(2),
      O => Madd_ball_pos_h1_addsub0000_cy(2)
    );
  Madd_ball_pos_h1_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(1),
      LI => Madd_ball_pos_h1_addsub0000_lut(2),
      O => ball_pos_h1_addsub0000(2)
    );
  Madd_ball_pos_h1_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_h1(3),
      I1 => ball_speedx(2),
      O => Madd_ball_pos_h1_addsub0000_lut(3)
    );
  Madd_ball_pos_h1_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(2),
      DI => ball_pos_h1(3),
      S => Madd_ball_pos_h1_addsub0000_lut(3),
      O => Madd_ball_pos_h1_addsub0000_cy(3)
    );
  Madd_ball_pos_h1_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(2),
      LI => Madd_ball_pos_h1_addsub0000_lut(3),
      O => ball_pos_h1_addsub0000(3)
    );
  Madd_ball_pos_h1_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_h1(4),
      I1 => ball_speedx(2),
      O => Madd_ball_pos_h1_addsub0000_lut(4)
    );
  Madd_ball_pos_h1_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(3),
      DI => ball_pos_h1(4),
      S => Madd_ball_pos_h1_addsub0000_lut(4),
      O => Madd_ball_pos_h1_addsub0000_cy(4)
    );
  Madd_ball_pos_h1_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(3),
      LI => Madd_ball_pos_h1_addsub0000_lut(4),
      O => ball_pos_h1_addsub0000(4)
    );
  Madd_ball_pos_h1_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_h1(5),
      I1 => ball_speedx(2),
      O => Madd_ball_pos_h1_addsub0000_lut(5)
    );
  Madd_ball_pos_h1_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(4),
      DI => ball_pos_h1(5),
      S => Madd_ball_pos_h1_addsub0000_lut(5),
      O => Madd_ball_pos_h1_addsub0000_cy(5)
    );
  Madd_ball_pos_h1_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(4),
      LI => Madd_ball_pos_h1_addsub0000_lut(5),
      O => ball_pos_h1_addsub0000(5)
    );
  Madd_ball_pos_h1_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_h1(6),
      I1 => ball_speedx(2),
      O => Madd_ball_pos_h1_addsub0000_lut(6)
    );
  Madd_ball_pos_h1_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(5),
      DI => ball_pos_h1(6),
      S => Madd_ball_pos_h1_addsub0000_lut(6),
      O => Madd_ball_pos_h1_addsub0000_cy(6)
    );
  Madd_ball_pos_h1_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(5),
      LI => Madd_ball_pos_h1_addsub0000_lut(6),
      O => ball_pos_h1_addsub0000(6)
    );
  Madd_ball_pos_h1_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_h1(7),
      I1 => ball_speedx(2),
      O => Madd_ball_pos_h1_addsub0000_lut(7)
    );
  Madd_ball_pos_h1_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(6),
      DI => ball_pos_h1(7),
      S => Madd_ball_pos_h1_addsub0000_lut(7),
      O => Madd_ball_pos_h1_addsub0000_cy(7)
    );
  Madd_ball_pos_h1_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(6),
      LI => Madd_ball_pos_h1_addsub0000_lut(7),
      O => ball_pos_h1_addsub0000(7)
    );
  Madd_ball_pos_h1_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_h1(8),
      I1 => ball_speedx(2),
      O => Madd_ball_pos_h1_addsub0000_lut(8)
    );
  Madd_ball_pos_h1_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(7),
      DI => ball_pos_h1(8),
      S => Madd_ball_pos_h1_addsub0000_lut(8),
      O => Madd_ball_pos_h1_addsub0000_cy(8)
    );
  Madd_ball_pos_h1_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(7),
      LI => Madd_ball_pos_h1_addsub0000_lut(8),
      O => ball_pos_h1_addsub0000(8)
    );
  Madd_ball_pos_h1_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_speedx(2),
      O => Madd_ball_pos_h1_addsub0000_lut(9)
    );
  Madd_ball_pos_h1_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_ball_pos_h1_addsub0000_cy(8),
      LI => Madd_ball_pos_h1_addsub0000_lut(9),
      O => ball_pos_h1_addsub0000(9)
    );
  Mcompar_video_on_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(7),
      I1 => h_pos(8),
      O => Mcompar_video_on_cmp_le0000_lut(0)
    );
  Mcompar_video_on_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut(0),
      O => Mcompar_video_on_cmp_le0000_cy(0)
    );
  Mcompar_video_on_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(0),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_1_rt_810,
      O => Mcompar_video_on_cmp_le0000_cy(1)
    );
  Mcompar_video_on_cmp_le0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_video_on_cmp_le0000_lut(2)
    );
  Mcompar_video_on_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut(2),
      O => Mcompar_video_on_cmp_le0000_cy(2)
    );
  Mcompar_video_on_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_video_on_cmp_le0000_lut(3)
    );
  Mcompar_video_on_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut(3),
      O => Mcompar_video_on_cmp_le0000_cy(3)
    );
  Mcompar_video_on_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_video_on_cmp_le0000_lut(4)
    );
  Mcompar_video_on_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut(4),
      O => Mcompar_video_on_cmp_le0000_cy(4)
    );
  Mcompar_video_on_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_video_on_cmp_le0000_lut(5)
    );
  Mcompar_video_on_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut(5),
      O => Mcompar_video_on_cmp_le0000_cy(5)
    );
  Mcompar_video_on_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_video_on_cmp_le0000_lut(6)
    );
  Mcompar_video_on_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut(6),
      O => Mcompar_video_on_cmp_le0000_cy(6)
    );
  Mcompar_video_on_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut(7),
      O => Mcompar_video_on_cmp_le0000_cy(7)
    );
  Mcompar_video_on_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(7),
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut(8),
      O => video_on_cmp_le0000
    );
  Mcompar_video_on_cmp_le0000_lut_0_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => h_pos(4),
      I1 => h_pos(5),
      I2 => h_pos(6),
      O => Mcompar_video_on_cmp_le0000_lut_0_1_890
    );
  Mcompar_video_on_cmp_le0000_cy_0_0 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_0_1_890,
      O => Mcompar_video_on_cmp_le0000_cy_0_1_779
    );
  Mcompar_video_on_cmp_le0000_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_0_1_779,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_1_0_rt_806,
      O => Mcompar_video_on_cmp_le0000_cy_1_1_798
    );
  Mcompar_video_on_cmp_le0000_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_1_1_798,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_2_1,
      O => Mcompar_video_on_cmp_le0000_cy_2_1_812
    );
  Mcompar_video_on_cmp_le0000_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_2_1_812,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_3_0_rt_829,
      O => Mcompar_video_on_cmp_le0000_cy_3_1_821
    );
  Mcompar_video_on_cmp_le0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_video_on_cmp_le0000_lut_4_1_932
    );
  Mcompar_video_on_cmp_le0000_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_3_1_821,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_4_1_932,
      O => Mcompar_video_on_cmp_le0000_cy_4_1_835
    );
  Mcompar_video_on_cmp_le0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_video_on_cmp_le0000_lut_5_1_941
    );
  Mcompar_video_on_cmp_le0000_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_4_1_835,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_5_1_941,
      O => Mcompar_video_on_cmp_le0000_cy_5_1_844
    );
  Mcompar_video_on_cmp_le0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_video_on_cmp_le0000_lut_6_1_947
    );
  Mcompar_video_on_cmp_le0000_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_5_1_844,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_6_1_947,
      O => Mcompar_video_on_cmp_le0000_cy_6_1_856
    );
  Mcompar_video_on_cmp_le0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_video_on_cmp_le0000_lut_7_1_956
    );
  Mcompar_video_on_cmp_le0000_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_6_1_856,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_7_1_956,
      O => Mcompar_video_on_cmp_le0000_cy_7_1_865
    );
  Mcompar_video_on_cmp_le0000_lut_8_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_video_on_cmp_le0000_lut_8_1_965
    );
  Mcompar_video_on_cmp_le0000_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_7_1_865,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_8_1_965,
      O => Mcompar_video_on_cmp_le0000_cy(8)
    );
  Mcompar_video_on_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(8),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut(9),
      O => Mcompar_video_on_cmp_le0000_cy(9)
    );
  Mcompar_video_on_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(9),
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut(10),
      O => h_sync_cmp_le0000
    );
  Mcompar_video_on_cmp_le0000_cy_0_1 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_0_2,
      O => Mcompar_video_on_cmp_le0000_cy_0_2_780
    );
  Mcompar_video_on_cmp_le0000_lut_1_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => h_pos(5),
      I1 => h_pos(6),
      I2 => h_pos(7),
      O => Mcompar_video_on_cmp_le0000_lut(1)
    );
  Mcompar_video_on_cmp_le0000_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_0_2_780,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_lut(1),
      O => Mcompar_video_on_cmp_le0000_cy_1_2_799
    );
  Mcompar_video_on_cmp_le0000_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_1_2_799,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_2_2,
      O => Mcompar_video_on_cmp_le0000_cy_2_2_813
    );
  Mcompar_video_on_cmp_le0000_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_2_2_813,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_3_1_rt_830,
      O => Mcompar_video_on_cmp_le0000_cy_3_2_822
    );
  Mcompar_video_on_cmp_le0000_lut_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_video_on_cmp_le0000_lut_4_2_933
    );
  Mcompar_video_on_cmp_le0000_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_3_2_822,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_4_2_933,
      O => Mcompar_video_on_cmp_le0000_cy_4_2_836
    );
  Mcompar_video_on_cmp_le0000_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_video_on_cmp_le0000_lut_5_2_942
    );
  Mcompar_video_on_cmp_le0000_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_4_2_836,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_5_2_942,
      O => Mcompar_video_on_cmp_le0000_cy_5_2_845
    );
  Mcompar_video_on_cmp_le0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_video_on_cmp_le0000_lut_6_2_948
    );
  Mcompar_video_on_cmp_le0000_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_5_2_845,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_6_2_948,
      O => Mcompar_video_on_cmp_le0000_cy_6_2_857
    );
  Mcompar_video_on_cmp_le0000_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_video_on_cmp_le0000_lut_7_2_957
    );
  Mcompar_video_on_cmp_le0000_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_6_2_857,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_7_2_957,
      O => Mcompar_video_on_cmp_le0000_cy_7_2_866
    );
  Mcompar_video_on_cmp_le0000_lut_8_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_video_on_cmp_le0000_lut_8_2_966
    );
  Mcompar_video_on_cmp_le0000_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_7_2_866,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_8_2_966,
      O => Mcompar_video_on_cmp_le0000_cy_8_1_874
    );
  Mcompar_video_on_cmp_le0000_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_8_1_874,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_9_1,
      O => Mcompar_video_on_cmp_le0000_cy_9_1_882
    );
  Mcompar_video_on_cmp_le0000_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_9_1_882,
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut_10_1,
      O => Mcompar_video_on_cmp_le0000_cy(10)
    );
  Mcompar_video_on_cmp_le0000_lut_0_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(0),
      I1 => h_pos(1),
      O => Mcompar_video_on_cmp_le0000_lut_0_3_892
    );
  Mcompar_video_on_cmp_le0000_cy_0_2 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_0_3_892,
      O => Mcompar_video_on_cmp_le0000_cy_0_3_781
    );
  Mcompar_video_on_cmp_le0000_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_0_3_781,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_1_2_rt_807,
      O => Mcompar_video_on_cmp_le0000_cy_1_3_800
    );
  Mcompar_video_on_cmp_le0000_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_1_3_800,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_2_3,
      O => Mcompar_video_on_cmp_le0000_cy_2_3_814
    );
  Mcompar_video_on_cmp_le0000_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_2_3_814,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_3_2_rt_831,
      O => Mcompar_video_on_cmp_le0000_cy_3_3_823
    );
  Mcompar_video_on_cmp_le0000_lut_4_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(5),
      I1 => h_pos(6),
      I2 => h_pos(7),
      I3 => h_pos(8),
      O => Mcompar_video_on_cmp_le0000_lut_4_3_934
    );
  Mcompar_video_on_cmp_le0000_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_3_3_823,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_4_3_934,
      O => Mcompar_video_on_cmp_le0000_cy_4_3_837
    );
  Mcompar_video_on_cmp_le0000_lut_5_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(9),
      I1 => h_pos(10),
      I2 => h_pos(11),
      I3 => h_pos(12),
      O => Mcompar_video_on_cmp_le0000_lut_5_3_943
    );
  Mcompar_video_on_cmp_le0000_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_4_3_837,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_5_3_943,
      O => Mcompar_video_on_cmp_le0000_cy_5_3_846
    );
  Mcompar_video_on_cmp_le0000_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(13),
      I1 => h_pos(14),
      I2 => h_pos(15),
      I3 => h_pos(16),
      O => Mcompar_video_on_cmp_le0000_lut_6_3_949
    );
  Mcompar_video_on_cmp_le0000_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_5_3_846,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_6_3_949,
      O => Mcompar_video_on_cmp_le0000_cy_6_3_858
    );
  Mcompar_video_on_cmp_le0000_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(17),
      I1 => h_pos(18),
      I2 => h_pos(19),
      I3 => h_pos(20),
      O => Mcompar_video_on_cmp_le0000_lut_7_3_958
    );
  Mcompar_video_on_cmp_le0000_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_6_3_858,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_7_3_958,
      O => Mcompar_video_on_cmp_le0000_cy_7_3_867
    );
  Mcompar_video_on_cmp_le0000_lut_8_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(21),
      I1 => h_pos(22),
      I2 => h_pos(23),
      I3 => h_pos(24),
      O => Mcompar_video_on_cmp_le0000_lut_8_3_967
    );
  Mcompar_video_on_cmp_le0000_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_7_3_867,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_8_3_967,
      O => Mcompar_video_on_cmp_le0000_cy_8_2_875
    );
  Mcompar_video_on_cmp_le0000_lut_9_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(25),
      I1 => h_pos(26),
      I2 => h_pos(27),
      I3 => h_pos(28),
      O => Mcompar_video_on_cmp_le0000_lut_9_2_975
    );
  Mcompar_video_on_cmp_le0000_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_8_2_875,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_9_2_975,
      O => Mcompar_video_on_cmp_le0000_cy_9_2_883
    );
  Mcompar_video_on_cmp_le0000_lut_10_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(29),
      I1 => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut_10_2_900
    );
  Mcompar_video_on_cmp_le0000_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_9_2_883,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_10_2_900,
      O => Mcompar_video_on_cmp_le0000_cy_10_1_788
    );
  Mcompar_video_on_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_10_1_788,
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut(11),
      O => Rout_cmp_le0000
    );
  Mcompar_video_on_cmp_le0000_cy_0_3 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_0_4,
      O => Mcompar_video_on_cmp_le0000_cy_0_4_782
    );
  Mcompar_video_on_cmp_le0000_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_0_4_782,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_1_3_rt_808,
      O => Mcompar_video_on_cmp_le0000_cy_1_4_801
    );
  Mcompar_video_on_cmp_le0000_lut_2_4 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => h_pos(2),
      I1 => h_pos(3),
      I2 => h_pos(4),
      O => Mcompar_video_on_cmp_le0000_lut_2_4_922
    );
  Mcompar_video_on_cmp_le0000_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_1_4_801,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_2_4_922,
      O => Mcompar_video_on_cmp_le0000_cy_2_4_815
    );
  Mcompar_video_on_cmp_le0000_lut_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => h_pos(5),
      I1 => h_pos(6),
      O => Mcompar_video_on_cmp_le0000_lut_3_1_928
    );
  Mcompar_video_on_cmp_le0000_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_2_4_815,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_lut_3_1_928,
      O => Mcompar_video_on_cmp_le0000_cy_3_4_824
    );
  Mcompar_video_on_cmp_le0000_lut_4_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(7),
      I1 => h_pos(8),
      O => Mcompar_video_on_cmp_le0000_lut_4_4_935
    );
  Mcompar_video_on_cmp_le0000_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_3_4_824,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_4_4_935,
      O => Mcompar_video_on_cmp_le0000_cy_4_4_838
    );
  Mcompar_video_on_cmp_le0000_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_4_4_838,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_5_3_rt_852,
      O => Mcompar_video_on_cmp_le0000_cy_5_4_847
    );
  Mcompar_video_on_cmp_le0000_lut_6_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_video_on_cmp_le0000_lut_6_4_950
    );
  Mcompar_video_on_cmp_le0000_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_5_4_847,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_6_4_950,
      O => Mcompar_video_on_cmp_le0000_cy_6_4_859
    );
  Mcompar_video_on_cmp_le0000_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_video_on_cmp_le0000_lut_7_4_959
    );
  Mcompar_video_on_cmp_le0000_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_6_4_859,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_7_4_959,
      O => Mcompar_video_on_cmp_le0000_cy_7_4_868
    );
  Mcompar_video_on_cmp_le0000_lut_8_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_video_on_cmp_le0000_lut_8_4_968
    );
  Mcompar_video_on_cmp_le0000_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_7_4_868,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_8_4_968,
      O => Mcompar_video_on_cmp_le0000_cy_8_3_876
    );
  Mcompar_video_on_cmp_le0000_lut_9_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_video_on_cmp_le0000_lut_9_3_976
    );
  Mcompar_video_on_cmp_le0000_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_8_3_876,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_9_3_976,
      O => Mcompar_video_on_cmp_le0000_cy_9_3_884
    );
  Mcompar_video_on_cmp_le0000_lut_10_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_video_on_cmp_le0000_lut_10_3_901
    );
  Mcompar_video_on_cmp_le0000_cy_10_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_9_3_884,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_10_3_901,
      O => Mcompar_video_on_cmp_le0000_cy_10_2_789
    );
  Mcompar_video_on_cmp_le0000_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_10_2_789,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_11_1,
      O => Mcompar_video_on_cmp_le0000_cy(11)
    );
  Mcompar_video_on_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy(11),
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut(12),
      O => Rout_cmp_le0002
    );
  Mcompar_video_on_cmp_le0000_lut_0_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(0),
      I1 => h_pos(1),
      O => Mcompar_video_on_cmp_le0000_lut_0_5_894
    );
  Mcompar_video_on_cmp_le0000_cy_0_4 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_0_5_894,
      O => Mcompar_video_on_cmp_le0000_cy_0_5_783
    );
  Mcompar_video_on_cmp_le0000_lut_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => h_pos(2),
      I1 => h_pos(3),
      O => Mcompar_video_on_cmp_le0000_lut_1_1_915
    );
  Mcompar_video_on_cmp_le0000_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_0_5_783,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_lut_1_1_915,
      O => Mcompar_video_on_cmp_le0000_cy_1_5_802
    );
  Mcompar_video_on_cmp_le0000_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_1_5_802,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_2_5,
      O => Mcompar_video_on_cmp_le0000_cy_2_5_816
    );
  Mcompar_video_on_cmp_le0000_lut_3_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => h_pos(5),
      I1 => h_pos(6),
      O => Mcompar_video_on_cmp_le0000_lut_3_2_929
    );
  Mcompar_video_on_cmp_le0000_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_2_5_816,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_lut_3_2_929,
      O => Mcompar_video_on_cmp_le0000_cy_3_5_825
    );
  Mcompar_video_on_cmp_le0000_lut_4_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(7),
      I1 => h_pos(8),
      O => Mcompar_video_on_cmp_le0000_lut_4_5_936
    );
  Mcompar_video_on_cmp_le0000_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_3_5_825,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_4_5_936,
      O => Mcompar_video_on_cmp_le0000_cy_4_5_839
    );
  Mcompar_video_on_cmp_le0000_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_4_5_839,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_5_4_rt_853,
      O => Mcompar_video_on_cmp_le0000_cy_5_5_848
    );
  Mcompar_video_on_cmp_le0000_lut_6_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_video_on_cmp_le0000_lut_6_5_951
    );
  Mcompar_video_on_cmp_le0000_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_5_5_848,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_6_5_951,
      O => Mcompar_video_on_cmp_le0000_cy_6_5_860
    );
  Mcompar_video_on_cmp_le0000_lut_7_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_video_on_cmp_le0000_lut_7_5_960
    );
  Mcompar_video_on_cmp_le0000_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_6_5_860,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_7_5_960,
      O => Mcompar_video_on_cmp_le0000_cy_7_5_869
    );
  Mcompar_video_on_cmp_le0000_lut_8_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_video_on_cmp_le0000_lut_8_5_969
    );
  Mcompar_video_on_cmp_le0000_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_7_5_869,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_8_5_969,
      O => Mcompar_video_on_cmp_le0000_cy_8_4_877
    );
  Mcompar_video_on_cmp_le0000_lut_9_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_video_on_cmp_le0000_lut_9_4_977
    );
  Mcompar_video_on_cmp_le0000_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_8_4_877,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_9_4_977,
      O => Mcompar_video_on_cmp_le0000_cy_9_4_885
    );
  Mcompar_video_on_cmp_le0000_lut_10_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_video_on_cmp_le0000_lut_10_4_902
    );
  Mcompar_video_on_cmp_le0000_cy_10_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_9_4_885,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_10_4_902,
      O => Mcompar_video_on_cmp_le0000_cy_10_3_790
    );
  Mcompar_video_on_cmp_le0000_cy_11_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_10_3_790,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_11_2,
      O => Mcompar_video_on_cmp_le0000_cy_11_1_795
    );
  Mcompar_video_on_cmp_le0000_cy_12_0 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_11_1_795,
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut_12_1,
      O => Rout_cmp_le0004
    );
  Mcompar_video_on_cmp_le0000_cy_0_5 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_0_6,
      O => Mcompar_video_on_cmp_le0000_cy_0_6_784
    );
  Mcompar_video_on_cmp_le0000_lut_1_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => h_pos(3),
      I1 => h_pos(4),
      I2 => h_pos(5),
      O => Mcompar_video_on_cmp_le0000_lut_1_2_916
    );
  Mcompar_video_on_cmp_le0000_cy_1_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_0_6_784,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_lut_1_2_916,
      O => Mcompar_video_on_cmp_le0000_cy_1_6_803
    );
  Mcompar_video_on_cmp_le0000_lut_2_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(6),
      I1 => h_pos(7),
      O => Mcompar_video_on_cmp_le0000_lut_2_6_924
    );
  Mcompar_video_on_cmp_le0000_cy_2_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_1_6_803,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_2_6_924,
      O => Mcompar_video_on_cmp_le0000_cy_2_6_817
    );
  Mcompar_video_on_cmp_le0000_cy_3_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_2_6_817,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_3_5_rt_832,
      O => Mcompar_video_on_cmp_le0000_cy_3_6_826
    );
  Mcompar_video_on_cmp_le0000_lut_4_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(9),
      I1 => h_pos(10),
      I2 => h_pos(11),
      I3 => h_pos(12),
      O => Mcompar_video_on_cmp_le0000_lut_4_6_937
    );
  Mcompar_video_on_cmp_le0000_cy_4_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_3_6_826,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_4_6_937,
      O => Mcompar_video_on_cmp_le0000_cy_4_6_840
    );
  Mcompar_video_on_cmp_le0000_lut_5_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(13),
      I1 => h_pos(14),
      I2 => h_pos(15),
      I3 => h_pos(16),
      O => Mcompar_video_on_cmp_le0000_lut_5_4_944
    );
  Mcompar_video_on_cmp_le0000_cy_5_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_4_6_840,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_5_4_944,
      O => Mcompar_video_on_cmp_le0000_cy_5_6_849
    );
  Mcompar_video_on_cmp_le0000_lut_6_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(17),
      I1 => h_pos(18),
      I2 => h_pos(19),
      I3 => h_pos(20),
      O => Mcompar_video_on_cmp_le0000_lut_6_6_952
    );
  Mcompar_video_on_cmp_le0000_cy_6_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_5_6_849,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_6_6_952,
      O => Mcompar_video_on_cmp_le0000_cy_6_6_861
    );
  Mcompar_video_on_cmp_le0000_lut_7_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(21),
      I1 => h_pos(22),
      I2 => h_pos(23),
      I3 => h_pos(24),
      O => Mcompar_video_on_cmp_le0000_lut_7_6_961
    );
  Mcompar_video_on_cmp_le0000_cy_7_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_6_6_861,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_7_6_961,
      O => Mcompar_video_on_cmp_le0000_cy_7_6_870
    );
  Mcompar_video_on_cmp_le0000_lut_8_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(25),
      I1 => h_pos(26),
      I2 => h_pos(27),
      I3 => h_pos(28),
      O => Mcompar_video_on_cmp_le0000_lut_8_6_970
    );
  Mcompar_video_on_cmp_le0000_cy_8_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_7_6_870,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_8_6_970,
      O => Mcompar_video_on_cmp_le0000_cy_8_5_878
    );
  Mcompar_video_on_cmp_le0000_lut_9_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(29),
      I1 => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut_9_5_978
    );
  Mcompar_video_on_cmp_le0000_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_8_5_878,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_9_5_978,
      O => Mcompar_video_on_cmp_le0000_cy_9_5_886
    );
  Mcompar_video_on_cmp_le0000_cy_10_4 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_9_5_886,
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut_10_5,
      O => Mcompar_video_on_cmp_le0000_cy_10_4_791
    );
  Mcompar_video_on_cmp_le0000_cy_0_6 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_0_7,
      O => Mcompar_video_on_cmp_le0000_cy_0_7_785
    );
  Mcompar_video_on_cmp_le0000_cy_1_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_0_7_785,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_1_6_rt_809,
      O => Mcompar_video_on_cmp_le0000_cy_1_7_804
    );
  Mcompar_video_on_cmp_le0000_lut_2_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(2),
      I1 => h_pos(3),
      O => Mcompar_video_on_cmp_le0000_lut_2_7_925
    );
  Mcompar_video_on_cmp_le0000_cy_2_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_1_7_804,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_2_7_925,
      O => Mcompar_video_on_cmp_le0000_cy_2_7_818
    );
  Mcompar_video_on_cmp_le0000_lut_3_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => h_pos(4),
      I1 => h_pos(5),
      O => Mcompar_video_on_cmp_le0000_lut_3_3_930
    );
  Mcompar_video_on_cmp_le0000_cy_3_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_2_7_818,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_lut_3_3_930,
      O => Mcompar_video_on_cmp_le0000_cy_3_7_827
    );
  Mcompar_video_on_cmp_le0000_lut_4_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(6),
      I1 => h_pos(7),
      I2 => h_pos(8),
      I3 => h_pos(9),
      O => Mcompar_video_on_cmp_le0000_lut_4_7_938
    );
  Mcompar_video_on_cmp_le0000_cy_4_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_3_7_827,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_4_7_938,
      O => Mcompar_video_on_cmp_le0000_cy_4_7_841
    );
  Mcompar_video_on_cmp_le0000_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_video_on_cmp_le0000_lut_5_5_945
    );
  Mcompar_video_on_cmp_le0000_cy_5_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_4_7_841,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_5_5_945,
      O => Mcompar_video_on_cmp_le0000_cy_5_7_850
    );
  Mcompar_video_on_cmp_le0000_lut_6_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_video_on_cmp_le0000_lut_6_7_953
    );
  Mcompar_video_on_cmp_le0000_cy_6_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_5_7_850,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_6_7_953,
      O => Mcompar_video_on_cmp_le0000_cy_6_7_862
    );
  Mcompar_video_on_cmp_le0000_lut_7_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_video_on_cmp_le0000_lut_7_7_962
    );
  Mcompar_video_on_cmp_le0000_cy_7_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_6_7_862,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_7_7_962,
      O => Mcompar_video_on_cmp_le0000_cy_7_7_871
    );
  Mcompar_video_on_cmp_le0000_lut_8_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_video_on_cmp_le0000_lut_8_7_971
    );
  Mcompar_video_on_cmp_le0000_cy_8_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_7_7_871,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_8_7_971,
      O => Mcompar_video_on_cmp_le0000_cy_8_6_879
    );
  Mcompar_video_on_cmp_le0000_lut_9_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_video_on_cmp_le0000_lut_9_6_979
    );
  Mcompar_video_on_cmp_le0000_cy_9_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_8_6_879,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_9_6_979,
      O => Mcompar_video_on_cmp_le0000_cy_9_6_887
    );
  Mcompar_video_on_cmp_le0000_cy_10_5 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_9_6_887,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_10_6,
      O => Mcompar_video_on_cmp_le0000_cy_10_5_792
    );
  Mcompar_video_on_cmp_le0000_cy_11_2 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_10_5_792,
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut_11_3,
      O => Rout_cmp_le0008
    );
  Mcompar_video_on_cmp_le0000_cy_0_7 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_0_8,
      O => Mcompar_video_on_cmp_le0000_cy_0_8
    );
  Mcompar_video_on_cmp_le0000_lut_1_3 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => h_pos(1),
      I1 => h_pos(2),
      I2 => h_pos(3),
      O => Mcompar_video_on_cmp_le0000_lut_1_3_917
    );
  Mcompar_video_on_cmp_le0000_cy_1_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_0_8,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_lut_1_3_917,
      O => Mcompar_video_on_cmp_le0000_cy_1_8
    );
  Mcompar_video_on_cmp_le0000_lut_2_8 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(4),
      I1 => h_pos(5),
      O => Mcompar_video_on_cmp_le0000_lut_2_8_926
    );
  Mcompar_video_on_cmp_le0000_cy_2_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_1_8,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_2_8_926,
      O => Mcompar_video_on_cmp_le0000_cy_2_8
    );
  Mcompar_video_on_cmp_le0000_cy_3_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_2_8,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_3_7_rt_833,
      O => Mcompar_video_on_cmp_le0000_cy_3_8
    );
  Mcompar_video_on_cmp_le0000_lut_4_8 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(7),
      I1 => h_pos(8),
      O => Mcompar_video_on_cmp_le0000_lut_4_8_939
    );
  Mcompar_video_on_cmp_le0000_cy_4_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_3_8,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_4_8_939,
      O => Mcompar_video_on_cmp_le0000_cy_4_8
    );
  Mcompar_video_on_cmp_le0000_cy_5_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_4_8,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_video_on_cmp_le0000_cy_5_7_rt_854,
      O => Mcompar_video_on_cmp_le0000_cy_5_8
    );
  Mcompar_video_on_cmp_le0000_lut_6_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_video_on_cmp_le0000_lut_6_8_954
    );
  Mcompar_video_on_cmp_le0000_cy_6_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_5_8,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_6_8_954,
      O => Mcompar_video_on_cmp_le0000_cy_6_8
    );
  Mcompar_video_on_cmp_le0000_lut_7_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_video_on_cmp_le0000_lut_7_8_963
    );
  Mcompar_video_on_cmp_le0000_cy_7_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_6_8,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_7_8_963,
      O => Mcompar_video_on_cmp_le0000_cy_7_8
    );
  Mcompar_video_on_cmp_le0000_lut_8_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_video_on_cmp_le0000_lut_8_8_972
    );
  Mcompar_video_on_cmp_le0000_cy_8_7 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_7_8,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_8_8_972,
      O => Mcompar_video_on_cmp_le0000_cy_8_7_880
    );
  Mcompar_video_on_cmp_le0000_lut_9_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_video_on_cmp_le0000_lut_9_7_980
    );
  Mcompar_video_on_cmp_le0000_cy_9_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_8_7_880,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_9_7_980,
      O => Mcompar_video_on_cmp_le0000_cy_9_7
    );
  Mcompar_video_on_cmp_le0000_lut_10_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_video_on_cmp_le0000_lut_10_7_905
    );
  Mcompar_video_on_cmp_le0000_cy_10_6 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_9_7,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_10_7_905,
      O => Mcompar_video_on_cmp_le0000_cy_10_6_793
    );
  Mcompar_video_on_cmp_le0000_cy_11_3 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_10_6_793,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_video_on_cmp_le0000_lut_11_4,
      O => Mcompar_video_on_cmp_le0000_cy_11_2_796
    );
  Mcompar_video_on_cmp_le0000_cy_12_1 : MUXCY
    port map (
      CI => Mcompar_video_on_cmp_le0000_cy_11_2_796,
      DI => h_pos(31),
      S => Mcompar_video_on_cmp_le0000_lut_12_2,
      O => Rout_cmp_le0010
    );
  Mcompar_Rout_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_0_rt_285,
      O => Mcompar_Rout_cmp_ge0001_cy(0)
    );
  Mcompar_Rout_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(0),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut(1),
      O => Mcompar_Rout_cmp_ge0001_cy(1)
    );
  Mcompar_Rout_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_2_rt_314,
      O => Mcompar_Rout_cmp_ge0001_cy(2)
    );
  Mcompar_Rout_cmp_ge0001_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(4),
      I1 => v_pos(5),
      I2 => v_pos(6),
      I3 => v_pos(7),
      O => Mcompar_Rout_cmp_ge0001_lut(3)
    );
  Mcompar_Rout_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(2),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut(3),
      O => Mcompar_Rout_cmp_ge0001_cy(3)
    );
  Mcompar_Rout_cmp_ge0001_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(8),
      I1 => v_pos(9),
      I2 => v_pos(10),
      I3 => v_pos(11),
      O => Mcompar_Rout_cmp_ge0001_lut(4)
    );
  Mcompar_Rout_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(3),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut(4),
      O => Mcompar_Rout_cmp_ge0001_cy(4)
    );
  Mcompar_Rout_cmp_ge0001_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(12),
      I1 => v_pos(13),
      I2 => v_pos(14),
      I3 => v_pos(15),
      O => Mcompar_Rout_cmp_ge0001_lut(5)
    );
  Mcompar_Rout_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(4),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut(5),
      O => Mcompar_Rout_cmp_ge0001_cy(5)
    );
  Mcompar_Rout_cmp_ge0001_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(16),
      I1 => v_pos(17),
      I2 => v_pos(18),
      I3 => v_pos(19),
      O => Mcompar_Rout_cmp_ge0001_lut(6)
    );
  Mcompar_Rout_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(5),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut(6),
      O => Mcompar_Rout_cmp_ge0001_cy(6)
    );
  Mcompar_Rout_cmp_ge0001_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(20),
      I1 => v_pos(21),
      I2 => v_pos(22),
      I3 => v_pos(23),
      O => Mcompar_Rout_cmp_ge0001_lut(7)
    );
  Mcompar_Rout_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(6),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut(7),
      O => Mcompar_Rout_cmp_ge0001_cy(7)
    );
  Mcompar_Rout_cmp_ge0001_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(24),
      I1 => v_pos(25),
      I2 => v_pos(26),
      I3 => v_pos(27),
      O => Mcompar_Rout_cmp_ge0001_lut(8)
    );
  Mcompar_Rout_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(7),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut(8),
      O => Mcompar_Rout_cmp_ge0001_cy(8)
    );
  Mcompar_Rout_cmp_ge0001_lut_9_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_pos(28),
      I1 => v_pos(29),
      I2 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0001_lut(9)
    );
  Mcompar_Rout_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(8),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut(9),
      O => Mcompar_Rout_cmp_ge0001_cy(9)
    );
  Mcompar_Rout_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut(10),
      O => Rout_cmp_ge0001
    );
  Mcompar_Rout_cmp_ge0001_lut_0_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(2),
      I1 => v_pos(3),
      O => Mcompar_Rout_cmp_ge0001_lut(0)
    );
  Mcompar_Rout_cmp_ge0001_cy_0_0 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut(0),
      O => Mcompar_Rout_cmp_ge0001_cy_0_1_276
    );
  Mcompar_Rout_cmp_ge0001_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_0_1_276,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_1_1,
      O => Mcompar_Rout_cmp_ge0001_cy_1_1_296
    );
  Mcompar_Rout_cmp_ge0001_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_1_1_296,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_2_0_rt_311,
      O => Mcompar_Rout_cmp_ge0001_cy_2_1_304
    );
  Mcompar_Rout_cmp_ge0001_lut_3_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(6),
      I1 => v_pos(7),
      O => Mcompar_Rout_cmp_ge0001_lut_3_1_403
    );
  Mcompar_Rout_cmp_ge0001_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_2_1_304,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_3_1_403,
      O => Mcompar_Rout_cmp_ge0001_cy_3_1_316
    );
  Mcompar_Rout_cmp_ge0001_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_3_1_316,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_4_0_rt_331,
      O => Mcompar_Rout_cmp_ge0001_cy_4_1_324
    );
  Mcompar_Rout_cmp_ge0001_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_Rout_cmp_ge0001_lut_5_1_415
    );
  Mcompar_Rout_cmp_ge0001_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_4_1_324,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_5_1_415,
      O => Mcompar_Rout_cmp_ge0001_cy_5_1_336
    );
  Mcompar_Rout_cmp_ge0001_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_Rout_cmp_ge0001_lut_6_1_423
    );
  Mcompar_Rout_cmp_ge0001_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_5_1_336,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_6_1_423,
      O => Mcompar_Rout_cmp_ge0001_cy_6_1_344
    );
  Mcompar_Rout_cmp_ge0001_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_Rout_cmp_ge0001_lut_7_1_431
    );
  Mcompar_Rout_cmp_ge0001_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_6_1_344,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_7_1_431,
      O => Mcompar_Rout_cmp_ge0001_cy_7_1_352
    );
  Mcompar_Rout_cmp_ge0001_lut_8_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_Rout_cmp_ge0001_lut_8_1_439
    );
  Mcompar_Rout_cmp_ge0001_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_7_1_352,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_8_1_439,
      O => Mcompar_Rout_cmp_ge0001_cy_8_1_360
    );
  Mcompar_Rout_cmp_ge0001_lut_9_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_Rout_cmp_ge0001_lut_9_1_447
    );
  Mcompar_Rout_cmp_ge0001_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_8_1_360,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_9_1_447,
      O => Mcompar_Rout_cmp_ge0001_cy_9_1_368
    );
  Mcompar_Rout_cmp_ge0001_lut_10_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0001_lut_10_1_380
    );
  Mcompar_Rout_cmp_ge0001_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_9_1_368,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_10_1_380,
      O => Mcompar_Rout_cmp_ge0001_cy(10)
    );
  Mcompar_Rout_cmp_ge0001_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut(11),
      O => Rout_cmp_ge0004
    );
  Mcompar_Rout_cmp_ge0001_lut_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(2),
      I1 => v_pos(3),
      O => Mcompar_Rout_cmp_ge0001_lut_0_1_375
    );
  Mcompar_Rout_cmp_ge0001_cy_0_1 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_0_1_375,
      O => Mcompar_Rout_cmp_ge0001_cy_0_2_277
    );
  Mcompar_Rout_cmp_ge0001_lut_1_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(4),
      I1 => v_pos(5),
      O => Mcompar_Rout_cmp_ge0001_lut_1_2_392
    );
  Mcompar_Rout_cmp_ge0001_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_0_2_277,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_1_2_392,
      O => Mcompar_Rout_cmp_ge0001_cy_1_2_297
    );
  Mcompar_Rout_cmp_ge0001_lut_2_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => v_pos(6),
      I1 => v_pos(7),
      I2 => v_pos(8),
      O => Mcompar_Rout_cmp_ge0001_lut(2)
    );
  Mcompar_Rout_cmp_ge0001_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_1_2_297,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut(2),
      O => Mcompar_Rout_cmp_ge0001_cy_2_2_305
    );
  Mcompar_Rout_cmp_ge0001_lut_3_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_Rout_cmp_ge0001_lut_3_2_404
    );
  Mcompar_Rout_cmp_ge0001_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_2_2_305,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_3_2_404,
      O => Mcompar_Rout_cmp_ge0001_cy_3_2_317
    );
  Mcompar_Rout_cmp_ge0001_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_Rout_cmp_ge0001_lut_4_1_411
    );
  Mcompar_Rout_cmp_ge0001_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_3_2_317,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_4_1_411,
      O => Mcompar_Rout_cmp_ge0001_cy_4_2_325
    );
  Mcompar_Rout_cmp_ge0001_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_Rout_cmp_ge0001_lut_5_2_416
    );
  Mcompar_Rout_cmp_ge0001_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_4_2_325,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_5_2_416,
      O => Mcompar_Rout_cmp_ge0001_cy_5_2_337
    );
  Mcompar_Rout_cmp_ge0001_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_Rout_cmp_ge0001_lut_6_2_424
    );
  Mcompar_Rout_cmp_ge0001_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_5_2_337,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_6_2_424,
      O => Mcompar_Rout_cmp_ge0001_cy_6_2_345
    );
  Mcompar_Rout_cmp_ge0001_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_Rout_cmp_ge0001_lut_7_2_432
    );
  Mcompar_Rout_cmp_ge0001_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_6_2_345,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_7_2_432,
      O => Mcompar_Rout_cmp_ge0001_cy_7_2_353
    );
  Mcompar_Rout_cmp_ge0001_lut_8_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0001_lut_8_2_440
    );
  Mcompar_Rout_cmp_ge0001_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_7_2_353,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_8_2_440,
      O => Mcompar_Rout_cmp_ge0001_cy_8_2_361
    );
  Mcompar_Rout_cmp_ge0001_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_8_2_361,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_9_2,
      O => Rout_cmp_ge0005
    );
  Mcompar_Rout_cmp_ge0001_lut_0_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(0),
      I1 => v_pos(1),
      O => Mcompar_Rout_cmp_ge0001_lut_0_2_376
    );
  Mcompar_Rout_cmp_ge0001_cy_0_2 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_0_2_376,
      O => Mcompar_Rout_cmp_ge0001_cy_0_3_278
    );
  Mcompar_Rout_cmp_ge0001_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_0_3_278,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_1_3,
      O => Mcompar_Rout_cmp_ge0001_cy_1_3_298
    );
  Mcompar_Rout_cmp_ge0001_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_1_3_298,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_2_2_rt_312,
      O => Mcompar_Rout_cmp_ge0001_cy_2_3_306
    );
  Mcompar_Rout_cmp_ge0001_lut_3_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(4),
      I1 => v_pos(5),
      O => Mcompar_Rout_cmp_ge0001_lut_3_3_405
    );
  Mcompar_Rout_cmp_ge0001_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_2_3_306,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_3_3_405,
      O => Mcompar_Rout_cmp_ge0001_cy_3_3_318
    );
  Mcompar_Rout_cmp_ge0001_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_3_3_318,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_4_2_rt_332,
      O => Mcompar_Rout_cmp_ge0001_cy_4_3_326
    );
  Mcompar_Rout_cmp_ge0001_lut_5_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(7),
      I1 => v_pos(8),
      I2 => v_pos(9),
      I3 => v_pos(10),
      O => Mcompar_Rout_cmp_ge0001_lut_5_3_417
    );
  Mcompar_Rout_cmp_ge0001_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_4_3_326,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_5_3_417,
      O => Mcompar_Rout_cmp_ge0001_cy_5_3_338
    );
  Mcompar_Rout_cmp_ge0001_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(11),
      I1 => v_pos(12),
      I2 => v_pos(13),
      I3 => v_pos(14),
      O => Mcompar_Rout_cmp_ge0001_lut_6_3_425
    );
  Mcompar_Rout_cmp_ge0001_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_5_3_338,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_6_3_425,
      O => Mcompar_Rout_cmp_ge0001_cy_6_3_346
    );
  Mcompar_Rout_cmp_ge0001_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(15),
      I1 => v_pos(16),
      I2 => v_pos(17),
      I3 => v_pos(18),
      O => Mcompar_Rout_cmp_ge0001_lut_7_3_433
    );
  Mcompar_Rout_cmp_ge0001_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_6_3_346,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_7_3_433,
      O => Mcompar_Rout_cmp_ge0001_cy_7_3_354
    );
  Mcompar_Rout_cmp_ge0001_lut_8_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(19),
      I1 => v_pos(20),
      I2 => v_pos(21),
      I3 => v_pos(22),
      O => Mcompar_Rout_cmp_ge0001_lut_8_3_441
    );
  Mcompar_Rout_cmp_ge0001_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_7_3_354,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_8_3_441,
      O => Mcompar_Rout_cmp_ge0001_cy_8_3_362
    );
  Mcompar_Rout_cmp_ge0001_lut_9_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(23),
      I1 => v_pos(24),
      I2 => v_pos(25),
      I3 => v_pos(26),
      O => Mcompar_Rout_cmp_ge0001_lut_9_3_449
    );
  Mcompar_Rout_cmp_ge0001_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_8_3_362,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_9_3_449,
      O => Mcompar_Rout_cmp_ge0001_cy_9_2_369
    );
  Mcompar_Rout_cmp_ge0001_lut_10_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(27),
      I1 => v_pos(28),
      I2 => v_pos(29),
      I3 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0001_lut_10_2_381
    );
  Mcompar_Rout_cmp_ge0001_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_9_2_369,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_10_2_381,
      O => Mcompar_Rout_cmp_ge0001_cy_10_1_287
    );
  Mcompar_Rout_cmp_ge0001_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_10_1_287,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_11_1,
      O => Mcompar_Rout_cmp_ge0001_cy(11)
    );
  Mcompar_Rout_cmp_ge0001_lut_0_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(1),
      I1 => v_pos(2),
      O => Mcompar_Rout_cmp_ge0001_lut_0_3_377
    );
  Mcompar_Rout_cmp_ge0001_cy_0_3 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_0_3_377,
      O => Mcompar_Rout_cmp_ge0001_cy_0_4_279
    );
  Mcompar_Rout_cmp_ge0001_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_0_4_279,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_1_4,
      O => Mcompar_Rout_cmp_ge0001_cy_1_4_299
    );
  Mcompar_Rout_cmp_ge0001_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_1_4_299,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_2_3_rt_313,
      O => Mcompar_Rout_cmp_ge0001_cy_2_4_307
    );
  Mcompar_Rout_cmp_ge0001_lut_3_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(5),
      I1 => v_pos(6),
      O => Mcompar_Rout_cmp_ge0001_lut_3_4_406
    );
  Mcompar_Rout_cmp_ge0001_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_2_4_307,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_3_4_406,
      O => Mcompar_Rout_cmp_ge0001_cy_3_4_319
    );
  Mcompar_Rout_cmp_ge0001_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_3_4_319,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_4_3_rt_333,
      O => Mcompar_Rout_cmp_ge0001_cy_4_4_327
    );
  Mcompar_Rout_cmp_ge0001_lut_5_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(8),
      I1 => v_pos(9),
      I2 => v_pos(10),
      I3 => v_pos(11),
      O => Mcompar_Rout_cmp_ge0001_lut_5_4_418
    );
  Mcompar_Rout_cmp_ge0001_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_4_4_327,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_5_4_418,
      O => Mcompar_Rout_cmp_ge0001_cy_5_4_339
    );
  Mcompar_Rout_cmp_ge0001_lut_6_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(12),
      I1 => v_pos(13),
      I2 => v_pos(14),
      I3 => v_pos(15),
      O => Mcompar_Rout_cmp_ge0001_lut_6_4_426
    );
  Mcompar_Rout_cmp_ge0001_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_5_4_339,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_6_4_426,
      O => Mcompar_Rout_cmp_ge0001_cy_6_4_347
    );
  Mcompar_Rout_cmp_ge0001_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(16),
      I1 => v_pos(17),
      I2 => v_pos(18),
      I3 => v_pos(19),
      O => Mcompar_Rout_cmp_ge0001_lut_7_4_434
    );
  Mcompar_Rout_cmp_ge0001_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_6_4_347,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_7_4_434,
      O => Mcompar_Rout_cmp_ge0001_cy_7_4_355
    );
  Mcompar_Rout_cmp_ge0001_lut_8_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(20),
      I1 => v_pos(21),
      I2 => v_pos(22),
      I3 => v_pos(23),
      O => Mcompar_Rout_cmp_ge0001_lut_8_4_442
    );
  Mcompar_Rout_cmp_ge0001_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_7_4_355,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_8_4_442,
      O => Mcompar_Rout_cmp_ge0001_cy_8_4_363
    );
  Mcompar_Rout_cmp_ge0001_lut_9_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(24),
      I1 => v_pos(25),
      I2 => v_pos(26),
      I3 => v_pos(27),
      O => Mcompar_Rout_cmp_ge0001_lut_9_4_450
    );
  Mcompar_Rout_cmp_ge0001_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_8_4_363,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_9_4_450,
      O => Mcompar_Rout_cmp_ge0001_cy_9_3_370
    );
  Mcompar_Rout_cmp_ge0001_lut_10_3 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_pos(28),
      I1 => v_pos(29),
      I2 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0001_lut_10_3_382
    );
  Mcompar_Rout_cmp_ge0001_cy_10_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_9_3_370,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_10_3_382,
      O => Mcompar_Rout_cmp_ge0001_cy_10_2_288
    );
  Mcompar_Rout_cmp_ge0001_cy_11_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_10_2_288,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_11_2,
      O => Mcompar_Rout_cmp_ge0001_cy_11_1_292
    );
  Mcompar_Rout_cmp_ge0001_cy_0_4 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_0_4_rt_283,
      O => Mcompar_Rout_cmp_ge0001_cy_0_5_280
    );
  Mcompar_Rout_cmp_ge0001_lut_1_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(1),
      I1 => v_pos(2),
      I2 => v_pos(3),
      I3 => v_pos(4),
      O => Mcompar_Rout_cmp_ge0001_lut_1_5_395
    );
  Mcompar_Rout_cmp_ge0001_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_0_5_280,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_1_5_395,
      O => Mcompar_Rout_cmp_ge0001_cy_1_5_300
    );
  Mcompar_Rout_cmp_ge0001_lut_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => v_pos(5),
      I1 => v_pos(6),
      I2 => v_pos(7),
      O => Mcompar_Rout_cmp_ge0001_lut_2_1_399
    );
  Mcompar_Rout_cmp_ge0001_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_1_5_300,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_2_1_399,
      O => Mcompar_Rout_cmp_ge0001_cy_2_5_308
    );
  Mcompar_Rout_cmp_ge0001_lut_3_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(8),
      I1 => v_pos(9),
      I2 => v_pos(10),
      I3 => v_pos(11),
      O => Mcompar_Rout_cmp_ge0001_lut_3_5_407
    );
  Mcompar_Rout_cmp_ge0001_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_2_5_308,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_3_5_407,
      O => Mcompar_Rout_cmp_ge0001_cy_3_5_320
    );
  Mcompar_Rout_cmp_ge0001_lut_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(12),
      I1 => v_pos(13),
      I2 => v_pos(14),
      I3 => v_pos(15),
      O => Mcompar_Rout_cmp_ge0001_lut_4_2_412
    );
  Mcompar_Rout_cmp_ge0001_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_3_5_320,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_4_2_412,
      O => Mcompar_Rout_cmp_ge0001_cy_4_5_328
    );
  Mcompar_Rout_cmp_ge0001_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(16),
      I1 => v_pos(17),
      I2 => v_pos(18),
      I3 => v_pos(19),
      O => Mcompar_Rout_cmp_ge0001_lut_5_5_419
    );
  Mcompar_Rout_cmp_ge0001_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_4_5_328,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_5_5_419,
      O => Mcompar_Rout_cmp_ge0001_cy_5_5_340
    );
  Mcompar_Rout_cmp_ge0001_lut_6_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(20),
      I1 => v_pos(21),
      I2 => v_pos(22),
      I3 => v_pos(23),
      O => Mcompar_Rout_cmp_ge0001_lut_6_5_427
    );
  Mcompar_Rout_cmp_ge0001_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_5_5_340,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_6_5_427,
      O => Mcompar_Rout_cmp_ge0001_cy_6_5_348
    );
  Mcompar_Rout_cmp_ge0001_lut_7_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(24),
      I1 => v_pos(25),
      I2 => v_pos(26),
      I3 => v_pos(27),
      O => Mcompar_Rout_cmp_ge0001_lut_7_5_435
    );
  Mcompar_Rout_cmp_ge0001_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_6_5_348,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_7_5_435,
      O => Mcompar_Rout_cmp_ge0001_cy_7_5_356
    );
  Mcompar_Rout_cmp_ge0001_lut_8_5 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_pos(28),
      I1 => v_pos(29),
      I2 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0001_lut_8_5_443
    );
  Mcompar_Rout_cmp_ge0001_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_7_5_356,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_8_5_443,
      O => Mcompar_Rout_cmp_ge0001_cy_8_5_364
    );
  Mcompar_Rout_cmp_ge0001_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_8_5_364,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_9_5,
      O => Mcompar_Rout_cmp_ge0001_cy_9_4_371
    );
  Mcompar_Rout_cmp_ge0001_lut_0_4 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => v_pos(0),
      I1 => v_pos(1),
      I2 => v_pos(2),
      O => Mcompar_Rout_cmp_ge0001_lut_0_4_378
    );
  Mcompar_Rout_cmp_ge0001_cy_0_5 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_0_4_378,
      O => Mcompar_Rout_cmp_ge0001_cy_0_6_281
    );
  Mcompar_Rout_cmp_ge0001_cy_1_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_0_6_281,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_1_6,
      O => Mcompar_Rout_cmp_ge0001_cy_1_6_301
    );
  Mcompar_Rout_cmp_ge0001_lut_2_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => v_pos(4),
      I1 => v_pos(5),
      I2 => v_pos(6),
      O => Mcompar_Rout_cmp_ge0001_lut_2_2_400
    );
  Mcompar_Rout_cmp_ge0001_cy_2_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_1_6_301,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_2_2_400,
      O => Mcompar_Rout_cmp_ge0001_cy_2_6_309
    );
  Mcompar_Rout_cmp_ge0001_cy_3_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_2_6_309,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_3_6,
      O => Mcompar_Rout_cmp_ge0001_cy_3_6_321
    );
  Mcompar_Rout_cmp_ge0001_cy_4_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_3_6_321,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_4_5_rt_334,
      O => Mcompar_Rout_cmp_ge0001_cy_4_6_329
    );
  Mcompar_Rout_cmp_ge0001_lut_5_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_Rout_cmp_ge0001_lut_5_6_420
    );
  Mcompar_Rout_cmp_ge0001_cy_5_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_4_6_329,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_5_6_420,
      O => Mcompar_Rout_cmp_ge0001_cy_5_6_341
    );
  Mcompar_Rout_cmp_ge0001_lut_6_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_Rout_cmp_ge0001_lut_6_6_428
    );
  Mcompar_Rout_cmp_ge0001_cy_6_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_5_6_341,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_6_6_428,
      O => Mcompar_Rout_cmp_ge0001_cy_6_6_349
    );
  Mcompar_Rout_cmp_ge0001_lut_7_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_Rout_cmp_ge0001_lut_7_6_436
    );
  Mcompar_Rout_cmp_ge0001_cy_7_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_6_6_349,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_7_6_436,
      O => Mcompar_Rout_cmp_ge0001_cy_7_6_357
    );
  Mcompar_Rout_cmp_ge0001_lut_8_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_Rout_cmp_ge0001_lut_8_6_444
    );
  Mcompar_Rout_cmp_ge0001_cy_8_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_7_6_357,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_8_6_444,
      O => Mcompar_Rout_cmp_ge0001_cy_8_6_365
    );
  Mcompar_Rout_cmp_ge0001_lut_9_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_Rout_cmp_ge0001_lut_9_6_452
    );
  Mcompar_Rout_cmp_ge0001_cy_9_5 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_8_6_365,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_9_6_452,
      O => Mcompar_Rout_cmp_ge0001_cy_9_5_372
    );
  Mcompar_Rout_cmp_ge0001_lut_10_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0001_lut_10_4_383
    );
  Mcompar_Rout_cmp_ge0001_cy_10_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_9_5_372,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_10_4_383,
      O => Mcompar_Rout_cmp_ge0001_cy_10_3_289
    );
  Mcompar_Rout_cmp_ge0001_cy_11_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_10_3_289,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_11_3,
      O => Mcompar_Rout_cmp_ge0001_cy_11_2_293
    );
  Mcompar_Rout_cmp_ge0001_cy_0_6 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_cy_0_6_rt_284,
      O => Mcompar_Rout_cmp_ge0001_cy_0_7
    );
  Mcompar_Rout_cmp_ge0001_cy_1_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_0_7,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_1_7,
      O => Mcompar_Rout_cmp_ge0001_cy_1_7
    );
  Mcompar_Rout_cmp_ge0001_lut_2_3 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => v_pos(2),
      I1 => v_pos(3),
      I2 => v_pos(4),
      I3 => v_pos(5),
      O => Mcompar_Rout_cmp_ge0001_lut_2_3_401
    );
  Mcompar_Rout_cmp_ge0001_cy_2_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_1_7,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_2_3_401,
      O => Mcompar_Rout_cmp_ge0001_cy_2_7
    );
  Mcompar_Rout_cmp_ge0001_cy_3_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_2_7,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_3_7,
      O => Mcompar_Rout_cmp_ge0001_cy_3_7
    );
  Mcompar_Rout_cmp_ge0001_lut_4_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => v_pos(7),
      I1 => v_pos(8),
      O => Mcompar_Rout_cmp_ge0001_lut_4_3_413
    );
  Mcompar_Rout_cmp_ge0001_cy_4_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_3_7,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_4_3_413,
      O => Mcompar_Rout_cmp_ge0001_cy_4_7
    );
  Mcompar_Rout_cmp_ge0001_lut_5_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_Rout_cmp_ge0001_lut_5_7_421
    );
  Mcompar_Rout_cmp_ge0001_cy_5_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_4_7,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_5_7_421,
      O => Mcompar_Rout_cmp_ge0001_cy_5_7
    );
  Mcompar_Rout_cmp_ge0001_lut_6_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_Rout_cmp_ge0001_lut_6_7_429
    );
  Mcompar_Rout_cmp_ge0001_cy_6_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_5_7,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_6_7_429,
      O => Mcompar_Rout_cmp_ge0001_cy_6_7
    );
  Mcompar_Rout_cmp_ge0001_lut_7_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_Rout_cmp_ge0001_lut_7_7_437
    );
  Mcompar_Rout_cmp_ge0001_cy_7_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_6_7,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_7_7_437,
      O => Mcompar_Rout_cmp_ge0001_cy_7_7
    );
  Mcompar_Rout_cmp_ge0001_lut_8_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_Rout_cmp_ge0001_lut_8_7_445
    );
  Mcompar_Rout_cmp_ge0001_cy_8_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_7_7,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_8_7_445,
      O => Mcompar_Rout_cmp_ge0001_cy_8_7
    );
  Mcompar_Rout_cmp_ge0001_lut_9_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_Rout_cmp_ge0001_lut_9_7_453
    );
  Mcompar_Rout_cmp_ge0001_cy_9_6 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_8_7,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_9_7_453,
      O => Mcompar_Rout_cmp_ge0001_cy_9_6_373
    );
  Mcompar_Rout_cmp_ge0001_lut_10_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0001_lut_10_5_384
    );
  Mcompar_Rout_cmp_ge0001_cy_10_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_9_6_373,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0001_lut_10_5_384,
      O => Mcompar_Rout_cmp_ge0001_cy_10_4_290
    );
  Mcompar_Rout_cmp_ge0001_cy_11_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0001_cy_10_4_290,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0001_lut_11_4,
      O => Mcompar_Rout_cmp_ge0001_cy_11_3_294
    );
  Mcompar_Rout_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_0_rt_149,
      O => Mcompar_Rout_cmp_ge0000_cy(0)
    );
  Mcompar_Rout_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(0),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(1),
      O => Mcompar_Rout_cmp_ge0000_cy(1)
    );
  Mcompar_Rout_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_2_rt_172,
      O => Mcompar_Rout_cmp_ge0000_cy(2)
    );
  Mcompar_Rout_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(4),
      I1 => h_pos(5),
      I2 => h_pos(6),
      I3 => h_pos(7),
      O => Mcompar_Rout_cmp_ge0000_lut(3)
    );
  Mcompar_Rout_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(2),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(3),
      O => Mcompar_Rout_cmp_ge0000_cy(3)
    );
  Mcompar_Rout_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(8),
      I1 => h_pos(9),
      I2 => h_pos(10),
      I3 => h_pos(11),
      O => Mcompar_Rout_cmp_ge0000_lut(4)
    );
  Mcompar_Rout_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(3),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(4),
      O => Mcompar_Rout_cmp_ge0000_cy(4)
    );
  Mcompar_Rout_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(12),
      I1 => h_pos(13),
      I2 => h_pos(14),
      I3 => h_pos(15),
      O => Mcompar_Rout_cmp_ge0000_lut(5)
    );
  Mcompar_Rout_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(4),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(5),
      O => Mcompar_Rout_cmp_ge0000_cy(5)
    );
  Mcompar_Rout_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(16),
      I1 => h_pos(17),
      I2 => h_pos(18),
      I3 => h_pos(19),
      O => Mcompar_Rout_cmp_ge0000_lut(6)
    );
  Mcompar_Rout_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(5),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(6),
      O => Mcompar_Rout_cmp_ge0000_cy(6)
    );
  Mcompar_Rout_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(20),
      I1 => h_pos(21),
      I2 => h_pos(22),
      I3 => h_pos(23),
      O => Mcompar_Rout_cmp_ge0000_lut(7)
    );
  Mcompar_Rout_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(6),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(7),
      O => Mcompar_Rout_cmp_ge0000_cy(7)
    );
  Mcompar_Rout_cmp_ge0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(24),
      I1 => h_pos(25),
      I2 => h_pos(26),
      I3 => h_pos(27),
      O => Mcompar_Rout_cmp_ge0000_lut(8)
    );
  Mcompar_Rout_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(7),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(8),
      O => Mcompar_Rout_cmp_ge0000_cy(8)
    );
  Mcompar_Rout_cmp_ge0000_lut_9_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => h_pos(28),
      I1 => h_pos(29),
      I2 => h_pos(30),
      O => Mcompar_Rout_cmp_ge0000_lut(9)
    );
  Mcompar_Rout_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(8),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(9),
      O => Mcompar_Rout_cmp_ge0000_cy(9)
    );
  Mcompar_Rout_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_lut(10),
      O => Rout_cmp_ge0000
    );
  Mcompar_Rout_cmp_ge0000_cy_0_0 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_0_0_rt_144,
      O => Mcompar_Rout_cmp_ge0000_cy_0_1_139
    );
  Mcompar_Rout_cmp_ge0000_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_0_1_139,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_1_1,
      O => Mcompar_Rout_cmp_ge0000_cy_1_1_157
    );
  Mcompar_Rout_cmp_ge0000_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_1_1_157,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_2_0_rt_168,
      O => Mcompar_Rout_cmp_ge0000_cy_2_1_163
    );
  Mcompar_Rout_cmp_ge0000_lut_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(5),
      I1 => h_pos(6),
      I2 => h_pos(7),
      I3 => h_pos(8),
      O => Mcompar_Rout_cmp_ge0000_lut_3_1_238
    );
  Mcompar_Rout_cmp_ge0000_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_2_1_163,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_3_1_238,
      O => Mcompar_Rout_cmp_ge0000_cy_3_1_174
    );
  Mcompar_Rout_cmp_ge0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(9),
      I1 => h_pos(10),
      I2 => h_pos(11),
      I3 => h_pos(12),
      O => Mcompar_Rout_cmp_ge0000_lut_4_1_244
    );
  Mcompar_Rout_cmp_ge0000_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_3_1_174,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_4_1_244,
      O => Mcompar_Rout_cmp_ge0000_cy_4_1_180
    );
  Mcompar_Rout_cmp_ge0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(13),
      I1 => h_pos(14),
      I2 => h_pos(15),
      I3 => h_pos(16),
      O => Mcompar_Rout_cmp_ge0000_lut_5_1_247
    );
  Mcompar_Rout_cmp_ge0000_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_4_1_180,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_5_1_247,
      O => Mcompar_Rout_cmp_ge0000_cy_5_1_189
    );
  Mcompar_Rout_cmp_ge0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(17),
      I1 => h_pos(18),
      I2 => h_pos(19),
      I3 => h_pos(20),
      O => Mcompar_Rout_cmp_ge0000_lut_6_1_253
    );
  Mcompar_Rout_cmp_ge0000_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_5_1_189,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_6_1_253,
      O => Mcompar_Rout_cmp_ge0000_cy_6_1_195
    );
  Mcompar_Rout_cmp_ge0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(21),
      I1 => h_pos(22),
      I2 => h_pos(23),
      I3 => h_pos(24),
      O => Mcompar_Rout_cmp_ge0000_lut_7_1_258
    );
  Mcompar_Rout_cmp_ge0000_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_6_1_195,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_7_1_258,
      O => Mcompar_Rout_cmp_ge0000_cy_7_1_202
    );
  Mcompar_Rout_cmp_ge0000_lut_8_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(25),
      I1 => h_pos(26),
      I2 => h_pos(27),
      I3 => h_pos(28),
      O => Mcompar_Rout_cmp_ge0000_lut_8_1_264
    );
  Mcompar_Rout_cmp_ge0000_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_7_1_202,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_8_1_264,
      O => Mcompar_Rout_cmp_ge0000_cy_8_1_208
    );
  Mcompar_Rout_cmp_ge0000_lut_9_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(29),
      I1 => h_pos(30),
      O => Mcompar_Rout_cmp_ge0000_lut_9_1_270
    );
  Mcompar_Rout_cmp_ge0000_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_8_1_208,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_9_1_270,
      O => Mcompar_Rout_cmp_ge0000_cy_9_1_214
    );
  Mcompar_Rout_cmp_ge0000_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_9_1_214,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_lut_10_1,
      O => Rout_cmp_ge0002
    );
  Mcompar_Rout_cmp_ge0000_cy_0_1 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_0_1_rt_145,
      O => Mcompar_Rout_cmp_ge0000_cy_0_2_140
    );
  Mcompar_Rout_cmp_ge0000_lut_1_2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => h_pos(2),
      I1 => h_pos(3),
      I2 => h_pos(4),
      O => Mcompar_Rout_cmp_ge0000_lut_1_2_232
    );
  Mcompar_Rout_cmp_ge0000_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_0_2_140,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_1_2_232,
      O => Mcompar_Rout_cmp_ge0000_cy_1_2_158
    );
  Mcompar_Rout_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => h_pos(5),
      I1 => h_pos(6),
      O => Mcompar_Rout_cmp_ge0000_lut(2)
    );
  Mcompar_Rout_cmp_ge0000_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_1_2_158,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_lut(2),
      O => Mcompar_Rout_cmp_ge0000_cy_2_2_164
    );
  Mcompar_Rout_cmp_ge0000_lut_3_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(7),
      I1 => h_pos(8),
      O => Mcompar_Rout_cmp_ge0000_lut_3_2_239
    );
  Mcompar_Rout_cmp_ge0000_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_2_2_164,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_3_2_239,
      O => Mcompar_Rout_cmp_ge0000_cy_3_2_175
    );
  Mcompar_Rout_cmp_ge0000_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_3_2_175,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_4_1_rt_185,
      O => Mcompar_Rout_cmp_ge0000_cy_4_2_181
    );
  Mcompar_Rout_cmp_ge0000_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_Rout_cmp_ge0000_lut_5_2_248
    );
  Mcompar_Rout_cmp_ge0000_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_4_2_181,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_5_2_248,
      O => Mcompar_Rout_cmp_ge0000_cy_5_2_190
    );
  Mcompar_Rout_cmp_ge0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_Rout_cmp_ge0000_lut_6_2_254
    );
  Mcompar_Rout_cmp_ge0000_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_5_2_190,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_6_2_254,
      O => Mcompar_Rout_cmp_ge0000_cy_6_2_196
    );
  Mcompar_Rout_cmp_ge0000_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_Rout_cmp_ge0000_lut_7_2_259
    );
  Mcompar_Rout_cmp_ge0000_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_6_2_196,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_7_2_259,
      O => Mcompar_Rout_cmp_ge0000_cy_7_2_203
    );
  Mcompar_Rout_cmp_ge0000_lut_8_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_Rout_cmp_ge0000_lut_8_2_265
    );
  Mcompar_Rout_cmp_ge0000_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_7_2_203,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_8_2_265,
      O => Mcompar_Rout_cmp_ge0000_cy_8_2_209
    );
  Mcompar_Rout_cmp_ge0000_lut_9_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_Rout_cmp_ge0000_lut_9_2_271
    );
  Mcompar_Rout_cmp_ge0000_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_8_2_209,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_9_2_271,
      O => Mcompar_Rout_cmp_ge0000_cy_9_2_215
    );
  Mcompar_Rout_cmp_ge0000_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_9_2_215,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_10_2,
      O => Mcompar_Rout_cmp_ge0000_cy(10)
    );
  Mcompar_Rout_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_lut(11),
      O => Rout_cmp_ge0003
    );
  Mcompar_Rout_cmp_ge0000_cy_0_2 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_0_2_rt_146,
      O => Mcompar_Rout_cmp_ge0000_cy_0_3_141
    );
  Mcompar_Rout_cmp_ge0000_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_0_3_141,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_1_3,
      O => Mcompar_Rout_cmp_ge0000_cy_1_3_159
    );
  Mcompar_Rout_cmp_ge0000_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_1_3_159,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_2_2_rt_169,
      O => Mcompar_Rout_cmp_ge0000_cy_2_3_165
    );
  Mcompar_Rout_cmp_ge0000_lut_3_3 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => h_pos(3),
      I1 => h_pos(4),
      I2 => h_pos(5),
      O => Mcompar_Rout_cmp_ge0000_lut_3_3_240
    );
  Mcompar_Rout_cmp_ge0000_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_2_3_165,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_3_3_240,
      O => Mcompar_Rout_cmp_ge0000_cy_3_3_176
    );
  Mcompar_Rout_cmp_ge0000_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_3_3_176,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_4_2_rt_186,
      O => Mcompar_Rout_cmp_ge0000_cy_4_3_182
    );
  Mcompar_Rout_cmp_ge0000_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_4_3_182,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_5_3,
      O => Mcompar_Rout_cmp_ge0000_cy_5_3_191
    );
  Mcompar_Rout_cmp_ge0000_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_5_3_191,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_6_2_rt_200,
      O => Mcompar_Rout_cmp_ge0000_cy_6_3_197
    );
  Mcompar_Rout_cmp_ge0000_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(9),
      I1 => h_pos(10),
      I2 => h_pos(11),
      I3 => h_pos(12),
      O => Mcompar_Rout_cmp_ge0000_lut_7_3_260
    );
  Mcompar_Rout_cmp_ge0000_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_6_3_197,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_7_3_260,
      O => Mcompar_Rout_cmp_ge0000_cy_7_3_204
    );
  Mcompar_Rout_cmp_ge0000_lut_8_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(13),
      I1 => h_pos(14),
      I2 => h_pos(15),
      I3 => h_pos(16),
      O => Mcompar_Rout_cmp_ge0000_lut_8_3_266
    );
  Mcompar_Rout_cmp_ge0000_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_7_3_204,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_8_3_266,
      O => Mcompar_Rout_cmp_ge0000_cy_8_3_210
    );
  Mcompar_Rout_cmp_ge0000_lut_9_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(17),
      I1 => h_pos(18),
      I2 => h_pos(19),
      I3 => h_pos(20),
      O => Mcompar_Rout_cmp_ge0000_lut_9_3_272
    );
  Mcompar_Rout_cmp_ge0000_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_8_3_210,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_9_3_272,
      O => Mcompar_Rout_cmp_ge0000_cy_9_3_216
    );
  Mcompar_Rout_cmp_ge0000_lut_10_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(21),
      I1 => h_pos(22),
      I2 => h_pos(23),
      I3 => h_pos(24),
      O => Mcompar_Rout_cmp_ge0000_lut_10_3_222
    );
  Mcompar_Rout_cmp_ge0000_cy_10_2 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_9_3_216,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_10_3_222,
      O => Mcompar_Rout_cmp_ge0000_cy_10_1_151
    );
  Mcompar_Rout_cmp_ge0000_lut_11_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(25),
      I1 => h_pos(26),
      I2 => h_pos(27),
      I3 => h_pos(28),
      O => Mcompar_Rout_cmp_ge0000_lut_11_1_226
    );
  Mcompar_Rout_cmp_ge0000_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_10_1_151,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_11_1_226,
      O => Mcompar_Rout_cmp_ge0000_cy(11)
    );
  Mcompar_Rout_cmp_ge0000_lut_12_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(29),
      I1 => h_pos(30),
      O => Mcompar_Rout_cmp_ge0000_lut(12)
    );
  Mcompar_Rout_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(11),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut(12),
      O => Mcompar_Rout_cmp_ge0000_cy(12)
    );
  Mcompar_Rout_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy(12),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_lut(13),
      O => Mcompar_Rout_cmp_ge0000_cy(13)
    );
  Mcompar_Rout_cmp_ge0000_cy_0_3 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_0_3_rt_147,
      O => Mcompar_Rout_cmp_ge0000_cy_0_4_142
    );
  Mcompar_Rout_cmp_ge0000_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_0_4_142,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_1_4,
      O => Mcompar_Rout_cmp_ge0000_cy_1_4_160
    );
  Mcompar_Rout_cmp_ge0000_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_1_4_160,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_2_3_rt_170,
      O => Mcompar_Rout_cmp_ge0000_cy_2_4_166
    );
  Mcompar_Rout_cmp_ge0000_lut_3_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(6),
      I1 => h_pos(7),
      I2 => h_pos(8),
      I3 => h_pos(9),
      O => Mcompar_Rout_cmp_ge0000_lut_3_4_241
    );
  Mcompar_Rout_cmp_ge0000_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_2_4_166,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_3_4_241,
      O => Mcompar_Rout_cmp_ge0000_cy_3_4_177
    );
  Mcompar_Rout_cmp_ge0000_lut_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_Rout_cmp_ge0000_lut_4_2_245
    );
  Mcompar_Rout_cmp_ge0000_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_3_4_177,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_4_2_245,
      O => Mcompar_Rout_cmp_ge0000_cy_4_4_183
    );
  Mcompar_Rout_cmp_ge0000_lut_5_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_Rout_cmp_ge0000_lut_5_4_250
    );
  Mcompar_Rout_cmp_ge0000_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_4_4_183,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_5_4_250,
      O => Mcompar_Rout_cmp_ge0000_cy_5_4_192
    );
  Mcompar_Rout_cmp_ge0000_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_Rout_cmp_ge0000_lut_6_3_255
    );
  Mcompar_Rout_cmp_ge0000_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_5_4_192,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_6_3_255,
      O => Mcompar_Rout_cmp_ge0000_cy_6_4_198
    );
  Mcompar_Rout_cmp_ge0000_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_Rout_cmp_ge0000_lut_7_4_261
    );
  Mcompar_Rout_cmp_ge0000_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_6_4_198,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_7_4_261,
      O => Mcompar_Rout_cmp_ge0000_cy_7_4_205
    );
  Mcompar_Rout_cmp_ge0000_lut_8_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_Rout_cmp_ge0000_lut_8_4_267
    );
  Mcompar_Rout_cmp_ge0000_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_7_4_205,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_8_4_267,
      O => Mcompar_Rout_cmp_ge0000_cy_8_4_211
    );
  Mcompar_Rout_cmp_ge0000_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_8_4_211,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_9_4,
      O => Mcompar_Rout_cmp_ge0000_cy_9_4_217
    );
  Mcompar_Rout_cmp_ge0000_cy_10_3 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_9_4_217,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_lut_10_4,
      O => Rout_cmp_ge0008
    );
  Mcompar_Rout_cmp_ge0000_cy_0_4 : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_0_4_rt_148,
      O => Mcompar_Rout_cmp_ge0000_cy_0_5
    );
  Mcompar_Rout_cmp_ge0000_lut_1_5 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => h_pos(3),
      I1 => h_pos(4),
      I2 => h_pos(5),
      O => Mcompar_Rout_cmp_ge0000_lut_1_5_235
    );
  Mcompar_Rout_cmp_ge0000_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_0_5,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_1_5_235,
      O => Mcompar_Rout_cmp_ge0000_cy_1_5
    );
  Mcompar_Rout_cmp_ge0000_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_1_5,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_2_4_rt_171,
      O => Mcompar_Rout_cmp_ge0000_cy_2_5
    );
  Mcompar_Rout_cmp_ge0000_lut_3_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => h_pos(7),
      I1 => h_pos(8),
      O => Mcompar_Rout_cmp_ge0000_lut_3_5_242
    );
  Mcompar_Rout_cmp_ge0000_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_2_5,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_3_5_242,
      O => Mcompar_Rout_cmp_ge0000_cy_3_5
    );
  Mcompar_Rout_cmp_ge0000_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_3_5,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_cy_4_4_rt_187,
      O => Mcompar_Rout_cmp_ge0000_cy_4_5
    );
  Mcompar_Rout_cmp_ge0000_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_Rout_cmp_ge0000_lut_5_5_251
    );
  Mcompar_Rout_cmp_ge0000_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_4_5,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_5_5_251,
      O => Mcompar_Rout_cmp_ge0000_cy_5_5
    );
  Mcompar_Rout_cmp_ge0000_lut_6_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_Rout_cmp_ge0000_lut_6_4_256
    );
  Mcompar_Rout_cmp_ge0000_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_5_5,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_6_4_256,
      O => Mcompar_Rout_cmp_ge0000_cy_6_5
    );
  Mcompar_Rout_cmp_ge0000_lut_7_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_Rout_cmp_ge0000_lut_7_5_262
    );
  Mcompar_Rout_cmp_ge0000_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_6_5,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_7_5_262,
      O => Mcompar_Rout_cmp_ge0000_cy_7_5
    );
  Mcompar_Rout_cmp_ge0000_lut_8_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_Rout_cmp_ge0000_lut_8_5_268
    );
  Mcompar_Rout_cmp_ge0000_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_7_5,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_8_5_268,
      O => Mcompar_Rout_cmp_ge0000_cy_8_5
    );
  Mcompar_Rout_cmp_ge0000_lut_9_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_Rout_cmp_ge0000_lut_9_5_274
    );
  Mcompar_Rout_cmp_ge0000_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_8_5,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_9_5_274,
      O => Mcompar_Rout_cmp_ge0000_cy_9_5
    );
  Mcompar_Rout_cmp_ge0000_cy_10_4 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_9_5,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0000_lut_10_5,
      O => Mcompar_Rout_cmp_ge0000_cy_10_2_152
    );
  Mcompar_Rout_cmp_ge0000_cy_11_1 : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0000_cy_10_2_152,
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0000_lut_11_2,
      O => Rout_cmp_ge0010
    );
  Mcompar_Rout_cmp_ge0006_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0006_cy_0_rt_455,
      O => Mcompar_Rout_cmp_ge0006_cy(0)
    );
  Mcompar_Rout_cmp_ge0006_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(1),
      I1 => ball_pos_h1(1),
      O => Mcompar_Rout_cmp_ge0006_lut(1)
    );
  Mcompar_Rout_cmp_ge0006_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(0),
      DI => h_pos(1),
      S => Mcompar_Rout_cmp_ge0006_lut(1),
      O => Mcompar_Rout_cmp_ge0006_cy(1)
    );
  Mcompar_Rout_cmp_ge0006_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(2),
      I1 => ball_pos_h1(2),
      O => Mcompar_Rout_cmp_ge0006_lut(2)
    );
  Mcompar_Rout_cmp_ge0006_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(1),
      DI => h_pos(2),
      S => Mcompar_Rout_cmp_ge0006_lut(2),
      O => Mcompar_Rout_cmp_ge0006_cy(2)
    );
  Mcompar_Rout_cmp_ge0006_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(3),
      I1 => ball_pos_h1(3),
      O => Mcompar_Rout_cmp_ge0006_lut(3)
    );
  Mcompar_Rout_cmp_ge0006_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(2),
      DI => h_pos(3),
      S => Mcompar_Rout_cmp_ge0006_lut(3),
      O => Mcompar_Rout_cmp_ge0006_cy(3)
    );
  Mcompar_Rout_cmp_ge0006_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(4),
      I1 => ball_pos_h1(4),
      O => Mcompar_Rout_cmp_ge0006_lut(4)
    );
  Mcompar_Rout_cmp_ge0006_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(3),
      DI => h_pos(4),
      S => Mcompar_Rout_cmp_ge0006_lut(4),
      O => Mcompar_Rout_cmp_ge0006_cy(4)
    );
  Mcompar_Rout_cmp_ge0006_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(5),
      I1 => ball_pos_h1(5),
      O => Mcompar_Rout_cmp_ge0006_lut(5)
    );
  Mcompar_Rout_cmp_ge0006_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(4),
      DI => h_pos(5),
      S => Mcompar_Rout_cmp_ge0006_lut(5),
      O => Mcompar_Rout_cmp_ge0006_cy(5)
    );
  Mcompar_Rout_cmp_ge0006_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(6),
      I1 => ball_pos_h1(6),
      O => Mcompar_Rout_cmp_ge0006_lut(6)
    );
  Mcompar_Rout_cmp_ge0006_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(5),
      DI => h_pos(6),
      S => Mcompar_Rout_cmp_ge0006_lut(6),
      O => Mcompar_Rout_cmp_ge0006_cy(6)
    );
  Mcompar_Rout_cmp_ge0006_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(7),
      I1 => ball_pos_h1(7),
      O => Mcompar_Rout_cmp_ge0006_lut(7)
    );
  Mcompar_Rout_cmp_ge0006_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(6),
      DI => h_pos(7),
      S => Mcompar_Rout_cmp_ge0006_lut(7),
      O => Mcompar_Rout_cmp_ge0006_cy(7)
    );
  Mcompar_Rout_cmp_ge0006_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(8),
      I1 => ball_pos_h1(8),
      O => Mcompar_Rout_cmp_ge0006_lut(8)
    );
  Mcompar_Rout_cmp_ge0006_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(7),
      DI => h_pos(8),
      S => Mcompar_Rout_cmp_ge0006_lut(8),
      O => Mcompar_Rout_cmp_ge0006_cy(8)
    );
  Mcompar_Rout_cmp_ge0006_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(9),
      I1 => ball_pos_h1(9),
      O => Mcompar_Rout_cmp_ge0006_lut(9)
    );
  Mcompar_Rout_cmp_ge0006_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(8),
      DI => h_pos(9),
      S => Mcompar_Rout_cmp_ge0006_lut(9),
      O => Mcompar_Rout_cmp_ge0006_cy(9)
    );
  Mcompar_Rout_cmp_ge0006_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_Rout_cmp_ge0006_lut(10)
    );
  Mcompar_Rout_cmp_ge0006_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(9),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0006_lut(10),
      O => Mcompar_Rout_cmp_ge0006_cy(10)
    );
  Mcompar_Rout_cmp_ge0006_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_Rout_cmp_ge0006_lut(11)
    );
  Mcompar_Rout_cmp_ge0006_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(10),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0006_lut(11),
      O => Mcompar_Rout_cmp_ge0006_cy(11)
    );
  Mcompar_Rout_cmp_ge0006_lut_12_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_Rout_cmp_ge0006_lut(12)
    );
  Mcompar_Rout_cmp_ge0006_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(11),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0006_lut(12),
      O => Mcompar_Rout_cmp_ge0006_cy(12)
    );
  Mcompar_Rout_cmp_ge0006_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_Rout_cmp_ge0006_lut(13)
    );
  Mcompar_Rout_cmp_ge0006_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(12),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0006_lut(13),
      O => Mcompar_Rout_cmp_ge0006_cy(13)
    );
  Mcompar_Rout_cmp_ge0006_lut_14_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_Rout_cmp_ge0006_lut(14)
    );
  Mcompar_Rout_cmp_ge0006_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(13),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0006_lut(14),
      O => Mcompar_Rout_cmp_ge0006_cy(14)
    );
  Mcompar_Rout_cmp_ge0006_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(14),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0006_lut(15),
      O => Mcompar_Rout_cmp_ge0006_cy(15)
    );
  Mcompar_Rout_cmp_ge0006_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0006_cy(15),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0006_lut(16),
      O => Rout_cmp_ge0006
    );
  Mcompar_Rout_cmp_ge0007_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => v_pos(0),
      S => Mcompar_Rout_cmp_ge0007_lut(0),
      O => Mcompar_Rout_cmp_ge0007_cy(0)
    );
  Mcompar_Rout_cmp_ge0007_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(1),
      I1 => ball_pos_v1(1),
      O => Mcompar_Rout_cmp_ge0007_lut(1)
    );
  Mcompar_Rout_cmp_ge0007_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(0),
      DI => v_pos(1),
      S => Mcompar_Rout_cmp_ge0007_lut(1),
      O => Mcompar_Rout_cmp_ge0007_cy(1)
    );
  Mcompar_Rout_cmp_ge0007_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(2),
      I1 => ball_pos_v1(2),
      O => Mcompar_Rout_cmp_ge0007_lut(2)
    );
  Mcompar_Rout_cmp_ge0007_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(1),
      DI => v_pos(2),
      S => Mcompar_Rout_cmp_ge0007_lut(2),
      O => Mcompar_Rout_cmp_ge0007_cy(2)
    );
  Mcompar_Rout_cmp_ge0007_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(3),
      I1 => ball_pos_v1(3),
      O => Mcompar_Rout_cmp_ge0007_lut(3)
    );
  Mcompar_Rout_cmp_ge0007_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(2),
      DI => v_pos(3),
      S => Mcompar_Rout_cmp_ge0007_lut(3),
      O => Mcompar_Rout_cmp_ge0007_cy(3)
    );
  Mcompar_Rout_cmp_ge0007_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(4),
      I1 => ball_pos_v1(4),
      O => Mcompar_Rout_cmp_ge0007_lut(4)
    );
  Mcompar_Rout_cmp_ge0007_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(3),
      DI => v_pos(4),
      S => Mcompar_Rout_cmp_ge0007_lut(4),
      O => Mcompar_Rout_cmp_ge0007_cy(4)
    );
  Mcompar_Rout_cmp_ge0007_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(5),
      I1 => ball_pos_v1(5),
      O => Mcompar_Rout_cmp_ge0007_lut(5)
    );
  Mcompar_Rout_cmp_ge0007_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(4),
      DI => v_pos(5),
      S => Mcompar_Rout_cmp_ge0007_lut(5),
      O => Mcompar_Rout_cmp_ge0007_cy(5)
    );
  Mcompar_Rout_cmp_ge0007_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(6),
      I1 => ball_pos_v1(6),
      O => Mcompar_Rout_cmp_ge0007_lut(6)
    );
  Mcompar_Rout_cmp_ge0007_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(5),
      DI => v_pos(6),
      S => Mcompar_Rout_cmp_ge0007_lut(6),
      O => Mcompar_Rout_cmp_ge0007_cy(6)
    );
  Mcompar_Rout_cmp_ge0007_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(7),
      I1 => ball_pos_v1(7),
      O => Mcompar_Rout_cmp_ge0007_lut(7)
    );
  Mcompar_Rout_cmp_ge0007_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(6),
      DI => v_pos(7),
      S => Mcompar_Rout_cmp_ge0007_lut(7),
      O => Mcompar_Rout_cmp_ge0007_cy(7)
    );
  Mcompar_Rout_cmp_ge0007_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(8),
      I1 => ball_pos_v1(8),
      O => Mcompar_Rout_cmp_ge0007_lut(8)
    );
  Mcompar_Rout_cmp_ge0007_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(7),
      DI => v_pos(8),
      S => Mcompar_Rout_cmp_ge0007_lut(8),
      O => Mcompar_Rout_cmp_ge0007_cy(8)
    );
  Mcompar_Rout_cmp_ge0007_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_Rout_cmp_ge0007_lut(9)
    );
  Mcompar_Rout_cmp_ge0007_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(8),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0007_lut(9),
      O => Mcompar_Rout_cmp_ge0007_cy(9)
    );
  Mcompar_Rout_cmp_ge0007_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_Rout_cmp_ge0007_lut(10)
    );
  Mcompar_Rout_cmp_ge0007_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(9),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0007_lut(10),
      O => Mcompar_Rout_cmp_ge0007_cy(10)
    );
  Mcompar_Rout_cmp_ge0007_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_Rout_cmp_ge0007_lut(11)
    );
  Mcompar_Rout_cmp_ge0007_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(10),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0007_lut(11),
      O => Mcompar_Rout_cmp_ge0007_cy(11)
    );
  Mcompar_Rout_cmp_ge0007_lut_12_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_Rout_cmp_ge0007_lut(12)
    );
  Mcompar_Rout_cmp_ge0007_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(11),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0007_lut(12),
      O => Mcompar_Rout_cmp_ge0007_cy(12)
    );
  Mcompar_Rout_cmp_ge0007_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_Rout_cmp_ge0007_lut(13)
    );
  Mcompar_Rout_cmp_ge0007_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(12),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0007_lut(13),
      O => Mcompar_Rout_cmp_ge0007_cy(13)
    );
  Mcompar_Rout_cmp_ge0007_lut_14_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0007_lut(14)
    );
  Mcompar_Rout_cmp_ge0007_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(13),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0007_lut(14),
      O => Mcompar_Rout_cmp_ge0007_cy(14)
    );
  Mcompar_Rout_cmp_ge0007_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0007_lut(15),
      O => Rout_cmp_ge0007
    );
  Mcompar_Rout_cmp_ge0009_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(0),
      I1 => paddle_v1(0),
      O => Mcompar_Rout_cmp_ge0009_lut(0)
    );
  Mcompar_Rout_cmp_ge0009_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => v_pos(0),
      S => Mcompar_Rout_cmp_ge0009_lut(0),
      O => Mcompar_Rout_cmp_ge0009_cy(0)
    );
  Mcompar_Rout_cmp_ge0009_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(1),
      I1 => paddle_v1(1),
      O => Mcompar_Rout_cmp_ge0009_lut(1)
    );
  Mcompar_Rout_cmp_ge0009_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(0),
      DI => v_pos(1),
      S => Mcompar_Rout_cmp_ge0009_lut(1),
      O => Mcompar_Rout_cmp_ge0009_cy(1)
    );
  Mcompar_Rout_cmp_ge0009_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(2),
      I1 => paddle_v1(2),
      O => Mcompar_Rout_cmp_ge0009_lut(2)
    );
  Mcompar_Rout_cmp_ge0009_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(1),
      DI => v_pos(2),
      S => Mcompar_Rout_cmp_ge0009_lut(2),
      O => Mcompar_Rout_cmp_ge0009_cy(2)
    );
  Mcompar_Rout_cmp_ge0009_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(3),
      I1 => paddle_v1(3),
      O => Mcompar_Rout_cmp_ge0009_lut(3)
    );
  Mcompar_Rout_cmp_ge0009_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(2),
      DI => v_pos(3),
      S => Mcompar_Rout_cmp_ge0009_lut(3),
      O => Mcompar_Rout_cmp_ge0009_cy(3)
    );
  Mcompar_Rout_cmp_ge0009_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(4),
      I1 => paddle_v1(4),
      O => Mcompar_Rout_cmp_ge0009_lut(4)
    );
  Mcompar_Rout_cmp_ge0009_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(3),
      DI => v_pos(4),
      S => Mcompar_Rout_cmp_ge0009_lut(4),
      O => Mcompar_Rout_cmp_ge0009_cy(4)
    );
  Mcompar_Rout_cmp_ge0009_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(5),
      I1 => paddle_v1(5),
      O => Mcompar_Rout_cmp_ge0009_lut(5)
    );
  Mcompar_Rout_cmp_ge0009_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(4),
      DI => v_pos(5),
      S => Mcompar_Rout_cmp_ge0009_lut(5),
      O => Mcompar_Rout_cmp_ge0009_cy(5)
    );
  Mcompar_Rout_cmp_ge0009_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(6),
      I1 => paddle_v1(6),
      O => Mcompar_Rout_cmp_ge0009_lut(6)
    );
  Mcompar_Rout_cmp_ge0009_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(5),
      DI => v_pos(6),
      S => Mcompar_Rout_cmp_ge0009_lut(6),
      O => Mcompar_Rout_cmp_ge0009_cy(6)
    );
  Mcompar_Rout_cmp_ge0009_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(7),
      I1 => paddle_v1(7),
      O => Mcompar_Rout_cmp_ge0009_lut(7)
    );
  Mcompar_Rout_cmp_ge0009_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(6),
      DI => v_pos(7),
      S => Mcompar_Rout_cmp_ge0009_lut(7),
      O => Mcompar_Rout_cmp_ge0009_cy(7)
    );
  Mcompar_Rout_cmp_ge0009_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(8),
      I1 => paddle_v1(8),
      O => Mcompar_Rout_cmp_ge0009_lut(8)
    );
  Mcompar_Rout_cmp_ge0009_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(7),
      DI => v_pos(8),
      S => Mcompar_Rout_cmp_ge0009_lut(8),
      O => Mcompar_Rout_cmp_ge0009_cy(8)
    );
  Mcompar_Rout_cmp_ge0009_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_Rout_cmp_ge0009_lut(9)
    );
  Mcompar_Rout_cmp_ge0009_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(8),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0009_lut(9),
      O => Mcompar_Rout_cmp_ge0009_cy(9)
    );
  Mcompar_Rout_cmp_ge0009_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_Rout_cmp_ge0009_lut(10)
    );
  Mcompar_Rout_cmp_ge0009_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(9),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0009_lut(10),
      O => Mcompar_Rout_cmp_ge0009_cy(10)
    );
  Mcompar_Rout_cmp_ge0009_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_Rout_cmp_ge0009_lut(11)
    );
  Mcompar_Rout_cmp_ge0009_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(10),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0009_lut(11),
      O => Mcompar_Rout_cmp_ge0009_cy(11)
    );
  Mcompar_Rout_cmp_ge0009_lut_12_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_Rout_cmp_ge0009_lut(12)
    );
  Mcompar_Rout_cmp_ge0009_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(11),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0009_lut(12),
      O => Mcompar_Rout_cmp_ge0009_cy(12)
    );
  Mcompar_Rout_cmp_ge0009_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_Rout_cmp_ge0009_lut(13)
    );
  Mcompar_Rout_cmp_ge0009_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(12),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0009_lut(13),
      O => Mcompar_Rout_cmp_ge0009_cy(13)
    );
  Mcompar_Rout_cmp_ge0009_lut_14_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0009_lut(14)
    );
  Mcompar_Rout_cmp_ge0009_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(13),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0009_lut(14),
      O => Mcompar_Rout_cmp_ge0009_cy(14)
    );
  Mcompar_Rout_cmp_ge0009_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0009_lut(15),
      O => Rout_cmp_ge0009
    );
  Mcompar_Rout_cmp_ge0011_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(0),
      I1 => paddle_v2(0),
      O => Mcompar_Rout_cmp_ge0011_lut(0)
    );
  Mcompar_Rout_cmp_ge0011_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => v_pos(0),
      S => Mcompar_Rout_cmp_ge0011_lut(0),
      O => Mcompar_Rout_cmp_ge0011_cy(0)
    );
  Mcompar_Rout_cmp_ge0011_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(1),
      I1 => paddle_v2(1),
      O => Mcompar_Rout_cmp_ge0011_lut(1)
    );
  Mcompar_Rout_cmp_ge0011_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(0),
      DI => v_pos(1),
      S => Mcompar_Rout_cmp_ge0011_lut(1),
      O => Mcompar_Rout_cmp_ge0011_cy(1)
    );
  Mcompar_Rout_cmp_ge0011_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(2),
      I1 => paddle_v2(2),
      O => Mcompar_Rout_cmp_ge0011_lut(2)
    );
  Mcompar_Rout_cmp_ge0011_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(1),
      DI => v_pos(2),
      S => Mcompar_Rout_cmp_ge0011_lut(2),
      O => Mcompar_Rout_cmp_ge0011_cy(2)
    );
  Mcompar_Rout_cmp_ge0011_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(3),
      I1 => paddle_v2(3),
      O => Mcompar_Rout_cmp_ge0011_lut(3)
    );
  Mcompar_Rout_cmp_ge0011_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(2),
      DI => v_pos(3),
      S => Mcompar_Rout_cmp_ge0011_lut(3),
      O => Mcompar_Rout_cmp_ge0011_cy(3)
    );
  Mcompar_Rout_cmp_ge0011_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(4),
      I1 => paddle_v2(4),
      O => Mcompar_Rout_cmp_ge0011_lut(4)
    );
  Mcompar_Rout_cmp_ge0011_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(3),
      DI => v_pos(4),
      S => Mcompar_Rout_cmp_ge0011_lut(4),
      O => Mcompar_Rout_cmp_ge0011_cy(4)
    );
  Mcompar_Rout_cmp_ge0011_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(5),
      I1 => paddle_v2(5),
      O => Mcompar_Rout_cmp_ge0011_lut(5)
    );
  Mcompar_Rout_cmp_ge0011_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(4),
      DI => v_pos(5),
      S => Mcompar_Rout_cmp_ge0011_lut(5),
      O => Mcompar_Rout_cmp_ge0011_cy(5)
    );
  Mcompar_Rout_cmp_ge0011_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(6),
      I1 => paddle_v2(6),
      O => Mcompar_Rout_cmp_ge0011_lut(6)
    );
  Mcompar_Rout_cmp_ge0011_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(5),
      DI => v_pos(6),
      S => Mcompar_Rout_cmp_ge0011_lut(6),
      O => Mcompar_Rout_cmp_ge0011_cy(6)
    );
  Mcompar_Rout_cmp_ge0011_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(7),
      I1 => paddle_v2(7),
      O => Mcompar_Rout_cmp_ge0011_lut(7)
    );
  Mcompar_Rout_cmp_ge0011_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(6),
      DI => v_pos(7),
      S => Mcompar_Rout_cmp_ge0011_lut(7),
      O => Mcompar_Rout_cmp_ge0011_cy(7)
    );
  Mcompar_Rout_cmp_ge0011_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(8),
      I1 => paddle_v2(8),
      O => Mcompar_Rout_cmp_ge0011_lut(8)
    );
  Mcompar_Rout_cmp_ge0011_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(7),
      DI => v_pos(8),
      S => Mcompar_Rout_cmp_ge0011_lut(8),
      O => Mcompar_Rout_cmp_ge0011_cy(8)
    );
  Mcompar_Rout_cmp_ge0011_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_Rout_cmp_ge0011_lut(9)
    );
  Mcompar_Rout_cmp_ge0011_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(8),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0011_lut(9),
      O => Mcompar_Rout_cmp_ge0011_cy(9)
    );
  Mcompar_Rout_cmp_ge0011_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_Rout_cmp_ge0011_lut(10)
    );
  Mcompar_Rout_cmp_ge0011_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(9),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0011_lut(10),
      O => Mcompar_Rout_cmp_ge0011_cy(10)
    );
  Mcompar_Rout_cmp_ge0011_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_Rout_cmp_ge0011_lut(11)
    );
  Mcompar_Rout_cmp_ge0011_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(10),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0011_lut(11),
      O => Mcompar_Rout_cmp_ge0011_cy(11)
    );
  Mcompar_Rout_cmp_ge0011_lut_12_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_Rout_cmp_ge0011_lut(12)
    );
  Mcompar_Rout_cmp_ge0011_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(11),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0011_lut(12),
      O => Mcompar_Rout_cmp_ge0011_cy(12)
    );
  Mcompar_Rout_cmp_ge0011_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_Rout_cmp_ge0011_lut(13)
    );
  Mcompar_Rout_cmp_ge0011_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(12),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0011_lut(13),
      O => Mcompar_Rout_cmp_ge0011_cy(13)
    );
  Mcompar_Rout_cmp_ge0011_lut_14_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_Rout_cmp_ge0011_lut(14)
    );
  Mcompar_Rout_cmp_ge0011_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(13),
      DI => Madd_add0000_add0000_cy(0),
      S => Mcompar_Rout_cmp_ge0011_lut(14),
      O => Mcompar_Rout_cmp_ge0011_cy(14)
    );
  Mcompar_Rout_cmp_ge0011_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0011_lut(15),
      O => Rout_cmp_ge0011
    );
  Mcount_v_pos_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcount_v_pos_lut(0),
      O => Mcount_v_pos_cy(0)
    );
  Mcount_v_pos_xor_0_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      LI => Mcount_v_pos_lut(0),
      O => Result(0)
    );
  Mcount_v_pos_cy_1_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_1_rt_1458,
      O => Mcount_v_pos_cy(1)
    );
  Mcount_v_pos_xor_1_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(0),
      LI => Mcount_v_pos_cy_1_rt_1458,
      O => Result(1)
    );
  Mcount_v_pos_cy_2_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_2_rt_1480,
      O => Mcount_v_pos_cy(2)
    );
  Mcount_v_pos_xor_2_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(1),
      LI => Mcount_v_pos_cy_2_rt_1480,
      O => Result(2)
    );
  Mcount_v_pos_cy_3_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_3_rt_1484,
      O => Mcount_v_pos_cy(3)
    );
  Mcount_v_pos_xor_3_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(2),
      LI => Mcount_v_pos_cy_3_rt_1484,
      O => Result(3)
    );
  Mcount_v_pos_cy_4_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_4_rt_1486,
      O => Mcount_v_pos_cy(4)
    );
  Mcount_v_pos_xor_4_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(3),
      LI => Mcount_v_pos_cy_4_rt_1486,
      O => Result(4)
    );
  Mcount_v_pos_cy_5_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_5_rt_1488,
      O => Mcount_v_pos_cy(5)
    );
  Mcount_v_pos_xor_5_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(4),
      LI => Mcount_v_pos_cy_5_rt_1488,
      O => Result(5)
    );
  Mcount_v_pos_cy_6_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_6_rt_1490,
      O => Mcount_v_pos_cy(6)
    );
  Mcount_v_pos_xor_6_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(5),
      LI => Mcount_v_pos_cy_6_rt_1490,
      O => Result(6)
    );
  Mcount_v_pos_cy_7_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_7_rt_1492,
      O => Mcount_v_pos_cy(7)
    );
  Mcount_v_pos_xor_7_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(6),
      LI => Mcount_v_pos_cy_7_rt_1492,
      O => Result(7)
    );
  Mcount_v_pos_cy_8_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(7),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_8_rt_1494,
      O => Mcount_v_pos_cy(8)
    );
  Mcount_v_pos_xor_8_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(7),
      LI => Mcount_v_pos_cy_8_rt_1494,
      O => Result(8)
    );
  Mcount_v_pos_cy_9_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(8),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_9_rt_1496,
      O => Mcount_v_pos_cy(9)
    );
  Mcount_v_pos_xor_9_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(8),
      LI => Mcount_v_pos_cy_9_rt_1496,
      O => Result(9)
    );
  Mcount_v_pos_cy_10_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_10_rt_1438,
      O => Mcount_v_pos_cy(10)
    );
  Mcount_v_pos_xor_10_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(9),
      LI => Mcount_v_pos_cy_10_rt_1438,
      O => Result(10)
    );
  Mcount_v_pos_cy_11_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_11_rt_1440,
      O => Mcount_v_pos_cy(11)
    );
  Mcount_v_pos_xor_11_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(10),
      LI => Mcount_v_pos_cy_11_rt_1440,
      O => Result(11)
    );
  Mcount_v_pos_cy_12_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(11),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_12_rt_1442,
      O => Mcount_v_pos_cy(12)
    );
  Mcount_v_pos_xor_12_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(11),
      LI => Mcount_v_pos_cy_12_rt_1442,
      O => Result(12)
    );
  Mcount_v_pos_cy_13_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(12),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_13_rt_1444,
      O => Mcount_v_pos_cy(13)
    );
  Mcount_v_pos_xor_13_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(12),
      LI => Mcount_v_pos_cy_13_rt_1444,
      O => Result(13)
    );
  Mcount_v_pos_cy_14_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(13),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_14_rt_1446,
      O => Mcount_v_pos_cy(14)
    );
  Mcount_v_pos_xor_14_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(13),
      LI => Mcount_v_pos_cy_14_rt_1446,
      O => Result(14)
    );
  Mcount_v_pos_cy_15_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_15_rt_1448,
      O => Mcount_v_pos_cy(15)
    );
  Mcount_v_pos_xor_15_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(14),
      LI => Mcount_v_pos_cy_15_rt_1448,
      O => Result(15)
    );
  Mcount_v_pos_cy_16_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(15),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_16_rt_1450,
      O => Mcount_v_pos_cy(16)
    );
  Mcount_v_pos_xor_16_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(15),
      LI => Mcount_v_pos_cy_16_rt_1450,
      O => Result(16)
    );
  Mcount_v_pos_cy_17_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(16),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_17_rt_1452,
      O => Mcount_v_pos_cy(17)
    );
  Mcount_v_pos_xor_17_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(16),
      LI => Mcount_v_pos_cy_17_rt_1452,
      O => Result(17)
    );
  Mcount_v_pos_cy_18_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(17),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_18_rt_1454,
      O => Mcount_v_pos_cy(18)
    );
  Mcount_v_pos_xor_18_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(17),
      LI => Mcount_v_pos_cy_18_rt_1454,
      O => Result(18)
    );
  Mcount_v_pos_cy_19_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(18),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_19_rt_1456,
      O => Mcount_v_pos_cy(19)
    );
  Mcount_v_pos_xor_19_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(18),
      LI => Mcount_v_pos_cy_19_rt_1456,
      O => Result(19)
    );
  Mcount_v_pos_cy_20_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(19),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_20_rt_1460,
      O => Mcount_v_pos_cy(20)
    );
  Mcount_v_pos_xor_20_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(19),
      LI => Mcount_v_pos_cy_20_rt_1460,
      O => Result(20)
    );
  Mcount_v_pos_cy_21_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(20),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_21_rt_1462,
      O => Mcount_v_pos_cy(21)
    );
  Mcount_v_pos_xor_21_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(20),
      LI => Mcount_v_pos_cy_21_rt_1462,
      O => Result(21)
    );
  Mcount_v_pos_cy_22_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(21),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_22_rt_1464,
      O => Mcount_v_pos_cy(22)
    );
  Mcount_v_pos_xor_22_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(21),
      LI => Mcount_v_pos_cy_22_rt_1464,
      O => Result(22)
    );
  Mcount_v_pos_cy_23_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(22),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_23_rt_1466,
      O => Mcount_v_pos_cy(23)
    );
  Mcount_v_pos_xor_23_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(22),
      LI => Mcount_v_pos_cy_23_rt_1466,
      O => Result(23)
    );
  Mcount_v_pos_cy_24_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(23),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_24_rt_1468,
      O => Mcount_v_pos_cy(24)
    );
  Mcount_v_pos_xor_24_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(23),
      LI => Mcount_v_pos_cy_24_rt_1468,
      O => Result(24)
    );
  Mcount_v_pos_cy_25_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(24),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_25_rt_1470,
      O => Mcount_v_pos_cy(25)
    );
  Mcount_v_pos_xor_25_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(24),
      LI => Mcount_v_pos_cy_25_rt_1470,
      O => Result(25)
    );
  Mcount_v_pos_cy_26_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(25),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_26_rt_1472,
      O => Mcount_v_pos_cy(26)
    );
  Mcount_v_pos_xor_26_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(25),
      LI => Mcount_v_pos_cy_26_rt_1472,
      O => Result(26)
    );
  Mcount_v_pos_cy_27_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(26),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_27_rt_1474,
      O => Mcount_v_pos_cy(27)
    );
  Mcount_v_pos_xor_27_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(26),
      LI => Mcount_v_pos_cy_27_rt_1474,
      O => Result(27)
    );
  Mcount_v_pos_cy_28_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(27),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_28_rt_1476,
      O => Mcount_v_pos_cy(28)
    );
  Mcount_v_pos_xor_28_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(27),
      LI => Mcount_v_pos_cy_28_rt_1476,
      O => Result(28)
    );
  Mcount_v_pos_cy_29_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(28),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_29_rt_1478,
      O => Mcount_v_pos_cy(29)
    );
  Mcount_v_pos_xor_29_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(28),
      LI => Mcount_v_pos_cy_29_rt_1478,
      O => Result(29)
    );
  Mcount_v_pos_cy_30_Q : MUXCY
    port map (
      CI => Mcount_v_pos_cy(29),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_v_pos_cy_30_rt_1482,
      O => Mcount_v_pos_cy(30)
    );
  Mcount_v_pos_xor_30_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(29),
      LI => Mcount_v_pos_cy_30_rt_1482,
      O => Result(30)
    );
  Mcount_v_pos_xor_31_Q : XORCY
    port map (
      CI => Mcount_v_pos_cy(30),
      LI => Mcount_v_pos_xor_31_rt_1530,
      O => Result(31)
    );
  Mcount_h_pos_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcount_h_pos_lut(0),
      O => Mcount_h_pos_cy(0)
    );
  Mcount_h_pos_xor_0_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      LI => Mcount_h_pos_lut(0),
      O => Result_0_1
    );
  Mcount_h_pos_cy_1_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_1_rt_1268,
      O => Mcount_h_pos_cy(1)
    );
  Mcount_h_pos_xor_1_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(0),
      LI => Mcount_h_pos_cy_1_rt_1268,
      O => Result_1_1
    );
  Mcount_h_pos_cy_2_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_2_rt_1290,
      O => Mcount_h_pos_cy(2)
    );
  Mcount_h_pos_xor_2_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(1),
      LI => Mcount_h_pos_cy_2_rt_1290,
      O => Result_2_1
    );
  Mcount_h_pos_cy_3_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_3_rt_1294,
      O => Mcount_h_pos_cy(3)
    );
  Mcount_h_pos_xor_3_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(2),
      LI => Mcount_h_pos_cy_3_rt_1294,
      O => Result_3_1
    );
  Mcount_h_pos_cy_4_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_4_rt_1296,
      O => Mcount_h_pos_cy(4)
    );
  Mcount_h_pos_xor_4_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(3),
      LI => Mcount_h_pos_cy_4_rt_1296,
      O => Result_4_1
    );
  Mcount_h_pos_cy_5_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_5_rt_1298,
      O => Mcount_h_pos_cy(5)
    );
  Mcount_h_pos_xor_5_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(4),
      LI => Mcount_h_pos_cy_5_rt_1298,
      O => Result_5_1
    );
  Mcount_h_pos_cy_6_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_6_rt_1300,
      O => Mcount_h_pos_cy(6)
    );
  Mcount_h_pos_xor_6_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(5),
      LI => Mcount_h_pos_cy_6_rt_1300,
      O => Result_6_1
    );
  Mcount_h_pos_cy_7_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_7_rt_1302,
      O => Mcount_h_pos_cy(7)
    );
  Mcount_h_pos_xor_7_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(6),
      LI => Mcount_h_pos_cy_7_rt_1302,
      O => Result_7_1
    );
  Mcount_h_pos_cy_8_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(7),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_8_rt_1304,
      O => Mcount_h_pos_cy(8)
    );
  Mcount_h_pos_xor_8_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(7),
      LI => Mcount_h_pos_cy_8_rt_1304,
      O => Result_8_1
    );
  Mcount_h_pos_cy_9_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(8),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_9_rt_1306,
      O => Mcount_h_pos_cy(9)
    );
  Mcount_h_pos_xor_9_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(8),
      LI => Mcount_h_pos_cy_9_rt_1306,
      O => Result_9_1
    );
  Mcount_h_pos_cy_10_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_10_rt_1248,
      O => Mcount_h_pos_cy(10)
    );
  Mcount_h_pos_xor_10_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(9),
      LI => Mcount_h_pos_cy_10_rt_1248,
      O => Result_10_1
    );
  Mcount_h_pos_cy_11_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_11_rt_1250,
      O => Mcount_h_pos_cy(11)
    );
  Mcount_h_pos_xor_11_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(10),
      LI => Mcount_h_pos_cy_11_rt_1250,
      O => Result_11_1
    );
  Mcount_h_pos_cy_12_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(11),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_12_rt_1252,
      O => Mcount_h_pos_cy(12)
    );
  Mcount_h_pos_xor_12_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(11),
      LI => Mcount_h_pos_cy_12_rt_1252,
      O => Result_12_1
    );
  Mcount_h_pos_cy_13_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(12),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_13_rt_1254,
      O => Mcount_h_pos_cy(13)
    );
  Mcount_h_pos_xor_13_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(12),
      LI => Mcount_h_pos_cy_13_rt_1254,
      O => Result_13_1
    );
  Mcount_h_pos_cy_14_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(13),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_14_rt_1256,
      O => Mcount_h_pos_cy(14)
    );
  Mcount_h_pos_xor_14_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(13),
      LI => Mcount_h_pos_cy_14_rt_1256,
      O => Result_14_1
    );
  Mcount_h_pos_cy_15_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_15_rt_1258,
      O => Mcount_h_pos_cy(15)
    );
  Mcount_h_pos_xor_15_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(14),
      LI => Mcount_h_pos_cy_15_rt_1258,
      O => Result_15_1
    );
  Mcount_h_pos_cy_16_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(15),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_16_rt_1260,
      O => Mcount_h_pos_cy(16)
    );
  Mcount_h_pos_xor_16_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(15),
      LI => Mcount_h_pos_cy_16_rt_1260,
      O => Result_16_1
    );
  Mcount_h_pos_cy_17_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(16),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_17_rt_1262,
      O => Mcount_h_pos_cy(17)
    );
  Mcount_h_pos_xor_17_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(16),
      LI => Mcount_h_pos_cy_17_rt_1262,
      O => Result_17_1
    );
  Mcount_h_pos_cy_18_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(17),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_18_rt_1264,
      O => Mcount_h_pos_cy(18)
    );
  Mcount_h_pos_xor_18_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(17),
      LI => Mcount_h_pos_cy_18_rt_1264,
      O => Result_18_1
    );
  Mcount_h_pos_cy_19_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(18),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_19_rt_1266,
      O => Mcount_h_pos_cy(19)
    );
  Mcount_h_pos_xor_19_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(18),
      LI => Mcount_h_pos_cy_19_rt_1266,
      O => Result_19_1
    );
  Mcount_h_pos_cy_20_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(19),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_20_rt_1270,
      O => Mcount_h_pos_cy(20)
    );
  Mcount_h_pos_xor_20_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(19),
      LI => Mcount_h_pos_cy_20_rt_1270,
      O => Result_20_1
    );
  Mcount_h_pos_cy_21_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(20),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_21_rt_1272,
      O => Mcount_h_pos_cy(21)
    );
  Mcount_h_pos_xor_21_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(20),
      LI => Mcount_h_pos_cy_21_rt_1272,
      O => Result_21_1
    );
  Mcount_h_pos_cy_22_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(21),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_22_rt_1274,
      O => Mcount_h_pos_cy(22)
    );
  Mcount_h_pos_xor_22_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(21),
      LI => Mcount_h_pos_cy_22_rt_1274,
      O => Result_22_1
    );
  Mcount_h_pos_cy_23_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(22),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_23_rt_1276,
      O => Mcount_h_pos_cy(23)
    );
  Mcount_h_pos_xor_23_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(22),
      LI => Mcount_h_pos_cy_23_rt_1276,
      O => Result_23_1
    );
  Mcount_h_pos_cy_24_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(23),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_24_rt_1278,
      O => Mcount_h_pos_cy(24)
    );
  Mcount_h_pos_xor_24_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(23),
      LI => Mcount_h_pos_cy_24_rt_1278,
      O => Result_24_1
    );
  Mcount_h_pos_cy_25_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(24),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_25_rt_1280,
      O => Mcount_h_pos_cy(25)
    );
  Mcount_h_pos_xor_25_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(24),
      LI => Mcount_h_pos_cy_25_rt_1280,
      O => Result_25_1
    );
  Mcount_h_pos_cy_26_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(25),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_26_rt_1282,
      O => Mcount_h_pos_cy(26)
    );
  Mcount_h_pos_xor_26_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(25),
      LI => Mcount_h_pos_cy_26_rt_1282,
      O => Result_26_1
    );
  Mcount_h_pos_cy_27_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(26),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_27_rt_1284,
      O => Mcount_h_pos_cy(27)
    );
  Mcount_h_pos_xor_27_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(26),
      LI => Mcount_h_pos_cy_27_rt_1284,
      O => Result_27_1
    );
  Mcount_h_pos_cy_28_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(27),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_28_rt_1286,
      O => Mcount_h_pos_cy(28)
    );
  Mcount_h_pos_xor_28_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(27),
      LI => Mcount_h_pos_cy_28_rt_1286,
      O => Result_28_1
    );
  Mcount_h_pos_cy_29_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(28),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_29_rt_1288,
      O => Mcount_h_pos_cy(29)
    );
  Mcount_h_pos_xor_29_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(28),
      LI => Mcount_h_pos_cy_29_rt_1288,
      O => Result_29_1
    );
  Mcount_h_pos_cy_30_Q : MUXCY
    port map (
      CI => Mcount_h_pos_cy(29),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_h_pos_cy_30_rt_1292,
      O => Mcount_h_pos_cy(30)
    );
  Mcount_h_pos_xor_30_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(29),
      LI => Mcount_h_pos_cy_30_rt_1292,
      O => Result_30_1
    );
  Mcount_h_pos_xor_31_Q : XORCY
    port map (
      CI => Mcount_h_pos_cy(30),
      LI => Mcount_h_pos_xor_31_rt_1340,
      O => Result_31_1
    );
  Mcount_increment_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      DI => Madd_add0000_add0000_cy(0),
      S => Mcount_increment_lut(0),
      O => Mcount_increment_cy(0)
    );
  Mcount_increment_xor_0_Q : XORCY
    port map (
      CI => Madd_add0000_add0000_lut_0_Q,
      LI => Mcount_increment_lut(0),
      O => Result_0_2
    );
  Mcount_increment_cy_1_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_1_rt_1363,
      O => Mcount_increment_cy(1)
    );
  Mcount_increment_xor_1_Q : XORCY
    port map (
      CI => Mcount_increment_cy(0),
      LI => Mcount_increment_cy_1_rt_1363,
      O => Result_1_2
    );
  Mcount_increment_cy_2_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_2_rt_1385,
      O => Mcount_increment_cy(2)
    );
  Mcount_increment_xor_2_Q : XORCY
    port map (
      CI => Mcount_increment_cy(1),
      LI => Mcount_increment_cy_2_rt_1385,
      O => Result_2_2
    );
  Mcount_increment_cy_3_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_3_rt_1389,
      O => Mcount_increment_cy(3)
    );
  Mcount_increment_xor_3_Q : XORCY
    port map (
      CI => Mcount_increment_cy(2),
      LI => Mcount_increment_cy_3_rt_1389,
      O => Result_3_2
    );
  Mcount_increment_cy_4_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_4_rt_1391,
      O => Mcount_increment_cy(4)
    );
  Mcount_increment_xor_4_Q : XORCY
    port map (
      CI => Mcount_increment_cy(3),
      LI => Mcount_increment_cy_4_rt_1391,
      O => Result_4_2
    );
  Mcount_increment_cy_5_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_5_rt_1393,
      O => Mcount_increment_cy(5)
    );
  Mcount_increment_xor_5_Q : XORCY
    port map (
      CI => Mcount_increment_cy(4),
      LI => Mcount_increment_cy_5_rt_1393,
      O => Result_5_2
    );
  Mcount_increment_cy_6_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_6_rt_1395,
      O => Mcount_increment_cy(6)
    );
  Mcount_increment_xor_6_Q : XORCY
    port map (
      CI => Mcount_increment_cy(5),
      LI => Mcount_increment_cy_6_rt_1395,
      O => Result_6_2
    );
  Mcount_increment_cy_7_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_7_rt_1397,
      O => Mcount_increment_cy(7)
    );
  Mcount_increment_xor_7_Q : XORCY
    port map (
      CI => Mcount_increment_cy(6),
      LI => Mcount_increment_cy_7_rt_1397,
      O => Result_7_2
    );
  Mcount_increment_cy_8_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(7),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_8_rt_1399,
      O => Mcount_increment_cy(8)
    );
  Mcount_increment_xor_8_Q : XORCY
    port map (
      CI => Mcount_increment_cy(7),
      LI => Mcount_increment_cy_8_rt_1399,
      O => Result_8_2
    );
  Mcount_increment_cy_9_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(8),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_9_rt_1401,
      O => Mcount_increment_cy(9)
    );
  Mcount_increment_xor_9_Q : XORCY
    port map (
      CI => Mcount_increment_cy(8),
      LI => Mcount_increment_cy_9_rt_1401,
      O => Result_9_2
    );
  Mcount_increment_cy_10_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_10_rt_1343,
      O => Mcount_increment_cy(10)
    );
  Mcount_increment_xor_10_Q : XORCY
    port map (
      CI => Mcount_increment_cy(9),
      LI => Mcount_increment_cy_10_rt_1343,
      O => Result_10_2
    );
  Mcount_increment_cy_11_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_11_rt_1345,
      O => Mcount_increment_cy(11)
    );
  Mcount_increment_xor_11_Q : XORCY
    port map (
      CI => Mcount_increment_cy(10),
      LI => Mcount_increment_cy_11_rt_1345,
      O => Result_11_2
    );
  Mcount_increment_cy_12_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(11),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_12_rt_1347,
      O => Mcount_increment_cy(12)
    );
  Mcount_increment_xor_12_Q : XORCY
    port map (
      CI => Mcount_increment_cy(11),
      LI => Mcount_increment_cy_12_rt_1347,
      O => Result_12_2
    );
  Mcount_increment_cy_13_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(12),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_13_rt_1349,
      O => Mcount_increment_cy(13)
    );
  Mcount_increment_xor_13_Q : XORCY
    port map (
      CI => Mcount_increment_cy(12),
      LI => Mcount_increment_cy_13_rt_1349,
      O => Result_13_2
    );
  Mcount_increment_cy_14_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(13),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_14_rt_1351,
      O => Mcount_increment_cy(14)
    );
  Mcount_increment_xor_14_Q : XORCY
    port map (
      CI => Mcount_increment_cy(13),
      LI => Mcount_increment_cy_14_rt_1351,
      O => Result_14_2
    );
  Mcount_increment_cy_15_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_15_rt_1353,
      O => Mcount_increment_cy(15)
    );
  Mcount_increment_xor_15_Q : XORCY
    port map (
      CI => Mcount_increment_cy(14),
      LI => Mcount_increment_cy_15_rt_1353,
      O => Result_15_2
    );
  Mcount_increment_cy_16_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(15),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_16_rt_1355,
      O => Mcount_increment_cy(16)
    );
  Mcount_increment_xor_16_Q : XORCY
    port map (
      CI => Mcount_increment_cy(15),
      LI => Mcount_increment_cy_16_rt_1355,
      O => Result_16_2
    );
  Mcount_increment_cy_17_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(16),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_17_rt_1357,
      O => Mcount_increment_cy(17)
    );
  Mcount_increment_xor_17_Q : XORCY
    port map (
      CI => Mcount_increment_cy(16),
      LI => Mcount_increment_cy_17_rt_1357,
      O => Result_17_2
    );
  Mcount_increment_cy_18_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(17),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_18_rt_1359,
      O => Mcount_increment_cy(18)
    );
  Mcount_increment_xor_18_Q : XORCY
    port map (
      CI => Mcount_increment_cy(17),
      LI => Mcount_increment_cy_18_rt_1359,
      O => Result_18_2
    );
  Mcount_increment_cy_19_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(18),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_19_rt_1361,
      O => Mcount_increment_cy(19)
    );
  Mcount_increment_xor_19_Q : XORCY
    port map (
      CI => Mcount_increment_cy(18),
      LI => Mcount_increment_cy_19_rt_1361,
      O => Result_19_2
    );
  Mcount_increment_cy_20_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(19),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_20_rt_1365,
      O => Mcount_increment_cy(20)
    );
  Mcount_increment_xor_20_Q : XORCY
    port map (
      CI => Mcount_increment_cy(19),
      LI => Mcount_increment_cy_20_rt_1365,
      O => Result_20_2
    );
  Mcount_increment_cy_21_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(20),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_21_rt_1367,
      O => Mcount_increment_cy(21)
    );
  Mcount_increment_xor_21_Q : XORCY
    port map (
      CI => Mcount_increment_cy(20),
      LI => Mcount_increment_cy_21_rt_1367,
      O => Result_21_2
    );
  Mcount_increment_cy_22_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(21),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_22_rt_1369,
      O => Mcount_increment_cy(22)
    );
  Mcount_increment_xor_22_Q : XORCY
    port map (
      CI => Mcount_increment_cy(21),
      LI => Mcount_increment_cy_22_rt_1369,
      O => Result_22_2
    );
  Mcount_increment_cy_23_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(22),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_23_rt_1371,
      O => Mcount_increment_cy(23)
    );
  Mcount_increment_xor_23_Q : XORCY
    port map (
      CI => Mcount_increment_cy(22),
      LI => Mcount_increment_cy_23_rt_1371,
      O => Result_23_2
    );
  Mcount_increment_cy_24_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(23),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_24_rt_1373,
      O => Mcount_increment_cy(24)
    );
  Mcount_increment_xor_24_Q : XORCY
    port map (
      CI => Mcount_increment_cy(23),
      LI => Mcount_increment_cy_24_rt_1373,
      O => Result_24_2
    );
  Mcount_increment_cy_25_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(24),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_25_rt_1375,
      O => Mcount_increment_cy(25)
    );
  Mcount_increment_xor_25_Q : XORCY
    port map (
      CI => Mcount_increment_cy(24),
      LI => Mcount_increment_cy_25_rt_1375,
      O => Result_25_2
    );
  Mcount_increment_cy_26_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(25),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_26_rt_1377,
      O => Mcount_increment_cy(26)
    );
  Mcount_increment_xor_26_Q : XORCY
    port map (
      CI => Mcount_increment_cy(25),
      LI => Mcount_increment_cy_26_rt_1377,
      O => Result_26_2
    );
  Mcount_increment_cy_27_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(26),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_27_rt_1379,
      O => Mcount_increment_cy(27)
    );
  Mcount_increment_xor_27_Q : XORCY
    port map (
      CI => Mcount_increment_cy(26),
      LI => Mcount_increment_cy_27_rt_1379,
      O => Result_27_2
    );
  Mcount_increment_cy_28_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(27),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_28_rt_1381,
      O => Mcount_increment_cy(28)
    );
  Mcount_increment_xor_28_Q : XORCY
    port map (
      CI => Mcount_increment_cy(27),
      LI => Mcount_increment_cy_28_rt_1381,
      O => Result_28_2
    );
  Mcount_increment_cy_29_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(28),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_29_rt_1383,
      O => Mcount_increment_cy(29)
    );
  Mcount_increment_xor_29_Q : XORCY
    port map (
      CI => Mcount_increment_cy(28),
      LI => Mcount_increment_cy_29_rt_1383,
      O => Result_29_2
    );
  Mcount_increment_cy_30_Q : MUXCY
    port map (
      CI => Mcount_increment_cy(29),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcount_increment_cy_30_rt_1387,
      O => Mcount_increment_cy(30)
    );
  Mcount_increment_xor_30_Q : XORCY
    port map (
      CI => Mcount_increment_cy(29),
      LI => Mcount_increment_cy_30_rt_1387,
      O => Result_30_2
    );
  Mcount_increment_xor_31_Q : XORCY
    port map (
      CI => Mcount_increment_cy(30),
      LI => Mcount_increment_xor_31_rt_1435,
      O => Result_31_2
    );
  Maccum_paddle_v1_cy_0_Q : MUXCY
    port map (
      CI => paddle_v1_not0001_inv,
      DI => paddle_v1(0),
      S => Maccum_paddle_v1_lut(0),
      O => Maccum_paddle_v1_cy(0)
    );
  Maccum_paddle_v1_xor_0_Q : XORCY
    port map (
      CI => paddle_v1_not0001_inv,
      LI => Maccum_paddle_v1_lut(0),
      O => Result_0_3
    );
  Maccum_paddle_v1_cy_1_Q : MUXCY
    port map (
      CI => Maccum_paddle_v1_cy(0),
      DI => paddle_v1(1),
      S => Maccum_paddle_v1_lut(1),
      O => Maccum_paddle_v1_cy(1)
    );
  Maccum_paddle_v1_xor_1_Q : XORCY
    port map (
      CI => Maccum_paddle_v1_cy(0),
      LI => Maccum_paddle_v1_lut(1),
      O => Result_1_3
    );
  Maccum_paddle_v1_cy_2_Q : MUXCY
    port map (
      CI => Maccum_paddle_v1_cy(1),
      DI => paddle_v1(2),
      S => Maccum_paddle_v1_lut(2),
      O => Maccum_paddle_v1_cy(2)
    );
  Maccum_paddle_v1_xor_2_Q : XORCY
    port map (
      CI => Maccum_paddle_v1_cy(1),
      LI => Maccum_paddle_v1_lut(2),
      O => Result_2_3
    );
  Maccum_paddle_v1_cy_3_Q : MUXCY
    port map (
      CI => Maccum_paddle_v1_cy(2),
      DI => paddle_v1(3),
      S => Maccum_paddle_v1_lut(3),
      O => Maccum_paddle_v1_cy(3)
    );
  Maccum_paddle_v1_xor_3_Q : XORCY
    port map (
      CI => Maccum_paddle_v1_cy(2),
      LI => Maccum_paddle_v1_lut(3),
      O => Result_3_3
    );
  Maccum_paddle_v1_cy_4_Q : MUXCY
    port map (
      CI => Maccum_paddle_v1_cy(3),
      DI => paddle_v1(4),
      S => Maccum_paddle_v1_lut(4),
      O => Maccum_paddle_v1_cy(4)
    );
  Maccum_paddle_v1_xor_4_Q : XORCY
    port map (
      CI => Maccum_paddle_v1_cy(3),
      LI => Maccum_paddle_v1_lut(4),
      O => Result_4_3
    );
  Maccum_paddle_v1_cy_5_Q : MUXCY
    port map (
      CI => Maccum_paddle_v1_cy(4),
      DI => paddle_v1(5),
      S => Maccum_paddle_v1_lut(5),
      O => Maccum_paddle_v1_cy(5)
    );
  Maccum_paddle_v1_xor_5_Q : XORCY
    port map (
      CI => Maccum_paddle_v1_cy(4),
      LI => Maccum_paddle_v1_lut(5),
      O => Result_5_3
    );
  Maccum_paddle_v1_cy_6_Q : MUXCY
    port map (
      CI => Maccum_paddle_v1_cy(5),
      DI => paddle_v1(6),
      S => Maccum_paddle_v1_lut(6),
      O => Maccum_paddle_v1_cy(6)
    );
  Maccum_paddle_v1_xor_6_Q : XORCY
    port map (
      CI => Maccum_paddle_v1_cy(5),
      LI => Maccum_paddle_v1_lut(6),
      O => Result_6_3
    );
  Maccum_paddle_v1_cy_7_Q : MUXCY
    port map (
      CI => Maccum_paddle_v1_cy(6),
      DI => paddle_v1(7),
      S => Maccum_paddle_v1_lut(7),
      O => Maccum_paddle_v1_cy(7)
    );
  Maccum_paddle_v1_xor_7_Q : XORCY
    port map (
      CI => Maccum_paddle_v1_cy(6),
      LI => Maccum_paddle_v1_lut(7),
      O => Result_7_3
    );
  Maccum_paddle_v1_xor_8_Q : XORCY
    port map (
      CI => Maccum_paddle_v1_cy(7),
      LI => Maccum_paddle_v1_lut(8),
      O => Result_8_3
    );
  Maccum_paddle_v2_cy_0_Q : MUXCY
    port map (
      CI => paddle_v2_not0001_inv,
      DI => paddle_v2(0),
      S => Maccum_paddle_v2_lut(0),
      O => Maccum_paddle_v2_cy(0)
    );
  Maccum_paddle_v2_xor_0_Q : XORCY
    port map (
      CI => paddle_v2_not0001_inv,
      LI => Maccum_paddle_v2_lut(0),
      O => Result_0_4
    );
  Maccum_paddle_v2_cy_1_Q : MUXCY
    port map (
      CI => Maccum_paddle_v2_cy(0),
      DI => paddle_v2(1),
      S => Maccum_paddle_v2_lut(1),
      O => Maccum_paddle_v2_cy(1)
    );
  Maccum_paddle_v2_xor_1_Q : XORCY
    port map (
      CI => Maccum_paddle_v2_cy(0),
      LI => Maccum_paddle_v2_lut(1),
      O => Result_1_4
    );
  Maccum_paddle_v2_cy_2_Q : MUXCY
    port map (
      CI => Maccum_paddle_v2_cy(1),
      DI => paddle_v2(2),
      S => Maccum_paddle_v2_lut(2),
      O => Maccum_paddle_v2_cy(2)
    );
  Maccum_paddle_v2_xor_2_Q : XORCY
    port map (
      CI => Maccum_paddle_v2_cy(1),
      LI => Maccum_paddle_v2_lut(2),
      O => Result_2_4
    );
  Maccum_paddle_v2_cy_3_Q : MUXCY
    port map (
      CI => Maccum_paddle_v2_cy(2),
      DI => paddle_v2(3),
      S => Maccum_paddle_v2_lut(3),
      O => Maccum_paddle_v2_cy(3)
    );
  Maccum_paddle_v2_xor_3_Q : XORCY
    port map (
      CI => Maccum_paddle_v2_cy(2),
      LI => Maccum_paddle_v2_lut(3),
      O => Result_3_4
    );
  Maccum_paddle_v2_cy_4_Q : MUXCY
    port map (
      CI => Maccum_paddle_v2_cy(3),
      DI => paddle_v2(4),
      S => Maccum_paddle_v2_lut(4),
      O => Maccum_paddle_v2_cy(4)
    );
  Maccum_paddle_v2_xor_4_Q : XORCY
    port map (
      CI => Maccum_paddle_v2_cy(3),
      LI => Maccum_paddle_v2_lut(4),
      O => Result_4_4
    );
  Maccum_paddle_v2_cy_5_Q : MUXCY
    port map (
      CI => Maccum_paddle_v2_cy(4),
      DI => paddle_v2(5),
      S => Maccum_paddle_v2_lut(5),
      O => Maccum_paddle_v2_cy(5)
    );
  Maccum_paddle_v2_xor_5_Q : XORCY
    port map (
      CI => Maccum_paddle_v2_cy(4),
      LI => Maccum_paddle_v2_lut(5),
      O => Result_5_4
    );
  Maccum_paddle_v2_cy_6_Q : MUXCY
    port map (
      CI => Maccum_paddle_v2_cy(5),
      DI => paddle_v2(6),
      S => Maccum_paddle_v2_lut(6),
      O => Maccum_paddle_v2_cy(6)
    );
  Maccum_paddle_v2_xor_6_Q : XORCY
    port map (
      CI => Maccum_paddle_v2_cy(5),
      LI => Maccum_paddle_v2_lut(6),
      O => Result_6_4
    );
  Maccum_paddle_v2_cy_7_Q : MUXCY
    port map (
      CI => Maccum_paddle_v2_cy(6),
      DI => paddle_v2(7),
      S => Maccum_paddle_v2_lut(7),
      O => Maccum_paddle_v2_cy(7)
    );
  Maccum_paddle_v2_xor_7_Q : XORCY
    port map (
      CI => Maccum_paddle_v2_cy(6),
      LI => Maccum_paddle_v2_lut(7),
      O => Result_7_4
    );
  Maccum_paddle_v2_xor_8_Q : XORCY
    port map (
      CI => Maccum_paddle_v2_cy(7),
      LI => Maccum_paddle_v2_lut(8),
      O => Result_8_4
    );
  Mcompar_Rout_cmp_le0006_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0006_lut(0),
      O => Mcompar_Rout_cmp_le0006_cy(0)
    );
  Mcompar_Rout_cmp_le0006_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(1),
      I1 => add0000_add0000(1),
      O => Mcompar_Rout_cmp_le0006_lut(1)
    );
  Mcompar_Rout_cmp_le0006_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(0),
      DI => add0000_add0000(1),
      S => Mcompar_Rout_cmp_le0006_lut(1),
      O => Mcompar_Rout_cmp_le0006_cy(1)
    );
  Mcompar_Rout_cmp_le0006_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(2),
      I1 => add0000_add0000(2),
      O => Mcompar_Rout_cmp_le0006_lut(2)
    );
  Mcompar_Rout_cmp_le0006_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(1),
      DI => add0000_add0000(2),
      S => Mcompar_Rout_cmp_le0006_lut(2),
      O => Mcompar_Rout_cmp_le0006_cy(2)
    );
  Mcompar_Rout_cmp_le0006_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(3),
      I1 => add0000_add0000(3),
      O => Mcompar_Rout_cmp_le0006_lut(3)
    );
  Mcompar_Rout_cmp_le0006_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(2),
      DI => add0000_add0000(3),
      S => Mcompar_Rout_cmp_le0006_lut(3),
      O => Mcompar_Rout_cmp_le0006_cy(3)
    );
  Mcompar_Rout_cmp_le0006_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(4),
      I1 => add0000_add0000(4),
      O => Mcompar_Rout_cmp_le0006_lut(4)
    );
  Mcompar_Rout_cmp_le0006_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(3),
      DI => add0000_add0000(4),
      S => Mcompar_Rout_cmp_le0006_lut(4),
      O => Mcompar_Rout_cmp_le0006_cy(4)
    );
  Mcompar_Rout_cmp_le0006_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(5),
      I1 => add0000_add0000(5),
      O => Mcompar_Rout_cmp_le0006_lut(5)
    );
  Mcompar_Rout_cmp_le0006_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(4),
      DI => add0000_add0000(5),
      S => Mcompar_Rout_cmp_le0006_lut(5),
      O => Mcompar_Rout_cmp_le0006_cy(5)
    );
  Mcompar_Rout_cmp_le0006_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(6),
      I1 => add0000_add0000(6),
      O => Mcompar_Rout_cmp_le0006_lut(6)
    );
  Mcompar_Rout_cmp_le0006_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(5),
      DI => add0000_add0000(6),
      S => Mcompar_Rout_cmp_le0006_lut(6),
      O => Mcompar_Rout_cmp_le0006_cy(6)
    );
  Mcompar_Rout_cmp_le0006_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(7),
      I1 => add0000_add0000(7),
      O => Mcompar_Rout_cmp_le0006_lut(7)
    );
  Mcompar_Rout_cmp_le0006_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(6),
      DI => add0000_add0000(7),
      S => Mcompar_Rout_cmp_le0006_lut(7),
      O => Mcompar_Rout_cmp_le0006_cy(7)
    );
  Mcompar_Rout_cmp_le0006_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(8),
      I1 => add0000_add0000(8),
      O => Mcompar_Rout_cmp_le0006_lut(8)
    );
  Mcompar_Rout_cmp_le0006_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(7),
      DI => add0000_add0000(8),
      S => Mcompar_Rout_cmp_le0006_lut(8),
      O => Mcompar_Rout_cmp_le0006_cy(8)
    );
  Mcompar_Rout_cmp_le0006_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_pos(9),
      I1 => add0000_add0000(9),
      O => Mcompar_Rout_cmp_le0006_lut(9)
    );
  Mcompar_Rout_cmp_le0006_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(8),
      DI => add0000_add0000(9),
      S => Mcompar_Rout_cmp_le0006_lut(9),
      O => Mcompar_Rout_cmp_le0006_cy(9)
    );
  Mcompar_Rout_cmp_le0006_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(10),
      I1 => h_pos(11),
      I2 => h_pos(12),
      I3 => h_pos(13),
      O => Mcompar_Rout_cmp_le0006_lut(10)
    );
  Mcompar_Rout_cmp_le0006_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0006_lut(10),
      O => Mcompar_Rout_cmp_le0006_cy(10)
    );
  Mcompar_Rout_cmp_le0006_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(16),
      I3 => h_pos(17),
      O => Mcompar_Rout_cmp_le0006_lut(11)
    );
  Mcompar_Rout_cmp_le0006_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0006_lut(11),
      O => Mcompar_Rout_cmp_le0006_cy(11)
    );
  Mcompar_Rout_cmp_le0006_lut_12_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(18),
      I1 => h_pos(19),
      I2 => h_pos(20),
      I3 => h_pos(21),
      O => Mcompar_Rout_cmp_le0006_lut(12)
    );
  Mcompar_Rout_cmp_le0006_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(11),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0006_lut(12),
      O => Mcompar_Rout_cmp_le0006_cy(12)
    );
  Mcompar_Rout_cmp_le0006_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(22),
      I1 => h_pos(23),
      I2 => h_pos(24),
      I3 => h_pos(25),
      O => Mcompar_Rout_cmp_le0006_lut(13)
    );
  Mcompar_Rout_cmp_le0006_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(12),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0006_lut(13),
      O => Mcompar_Rout_cmp_le0006_cy(13)
    );
  Mcompar_Rout_cmp_le0006_lut_14_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(28),
      I3 => h_pos(29),
      O => Mcompar_Rout_cmp_le0006_lut(14)
    );
  Mcompar_Rout_cmp_le0006_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(13),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0006_lut(14),
      O => Mcompar_Rout_cmp_le0006_cy(14)
    );
  Mcompar_Rout_cmp_le0006_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0006_lut(15),
      O => Mcompar_Rout_cmp_le0006_cy(15)
    );
  Mcompar_Rout_cmp_le0006_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0006_cy(15),
      DI => h_pos(31),
      S => Mcompar_Rout_cmp_le0006_lut(16),
      O => Rout_cmp_le0006
    );
  Mcompar_Rout_cmp_le0007_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(1),
      I1 => add0001_add0000(1),
      O => Mcompar_Rout_cmp_le0007_lut(1)
    );
  Mcompar_Rout_cmp_le0007_cy_1_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => add0001_add0000(1),
      S => Mcompar_Rout_cmp_le0007_lut(1),
      O => Mcompar_Rout_cmp_le0007_cy(1)
    );
  Mcompar_Rout_cmp_le0007_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(2),
      I1 => add0001_add0000(2),
      O => Mcompar_Rout_cmp_le0007_lut(2)
    );
  Mcompar_Rout_cmp_le0007_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(1),
      DI => add0001_add0000(2),
      S => Mcompar_Rout_cmp_le0007_lut(2),
      O => Mcompar_Rout_cmp_le0007_cy(2)
    );
  Mcompar_Rout_cmp_le0007_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(3),
      I1 => add0001_add0000(3),
      O => Mcompar_Rout_cmp_le0007_lut(3)
    );
  Mcompar_Rout_cmp_le0007_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(2),
      DI => add0001_add0000(3),
      S => Mcompar_Rout_cmp_le0007_lut(3),
      O => Mcompar_Rout_cmp_le0007_cy(3)
    );
  Mcompar_Rout_cmp_le0007_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(4),
      I1 => add0001_add0000(4),
      O => Mcompar_Rout_cmp_le0007_lut(4)
    );
  Mcompar_Rout_cmp_le0007_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(3),
      DI => add0001_add0000(4),
      S => Mcompar_Rout_cmp_le0007_lut(4),
      O => Mcompar_Rout_cmp_le0007_cy(4)
    );
  Mcompar_Rout_cmp_le0007_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(5),
      I1 => add0001_add0000(5),
      O => Mcompar_Rout_cmp_le0007_lut(5)
    );
  Mcompar_Rout_cmp_le0007_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(4),
      DI => add0001_add0000(5),
      S => Mcompar_Rout_cmp_le0007_lut(5),
      O => Mcompar_Rout_cmp_le0007_cy(5)
    );
  Mcompar_Rout_cmp_le0007_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(6),
      I1 => add0001_add0000(6),
      O => Mcompar_Rout_cmp_le0007_lut(6)
    );
  Mcompar_Rout_cmp_le0007_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(5),
      DI => add0001_add0000(6),
      S => Mcompar_Rout_cmp_le0007_lut(6),
      O => Mcompar_Rout_cmp_le0007_cy(6)
    );
  Mcompar_Rout_cmp_le0007_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(7),
      I1 => add0001_add0000(7),
      O => Mcompar_Rout_cmp_le0007_lut(7)
    );
  Mcompar_Rout_cmp_le0007_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(6),
      DI => add0001_add0000(7),
      S => Mcompar_Rout_cmp_le0007_lut(7),
      O => Mcompar_Rout_cmp_le0007_cy(7)
    );
  Mcompar_Rout_cmp_le0007_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(8),
      I1 => add0001_add0000(8),
      O => Mcompar_Rout_cmp_le0007_lut(8)
    );
  Mcompar_Rout_cmp_le0007_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(7),
      DI => add0001_add0000(8),
      S => Mcompar_Rout_cmp_le0007_lut(8),
      O => Mcompar_Rout_cmp_le0007_cy(8)
    );
  Mcompar_Rout_cmp_le0007_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(9),
      I1 => v_pos(10),
      I2 => v_pos(11),
      I3 => v_pos(12),
      O => Mcompar_Rout_cmp_le0007_lut(9)
    );
  Mcompar_Rout_cmp_le0007_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(8),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0007_lut(9),
      O => Mcompar_Rout_cmp_le0007_cy(9)
    );
  Mcompar_Rout_cmp_le0007_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(13),
      I1 => v_pos(14),
      I2 => v_pos(15),
      I3 => v_pos(16),
      O => Mcompar_Rout_cmp_le0007_lut(10)
    );
  Mcompar_Rout_cmp_le0007_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0007_lut(10),
      O => Mcompar_Rout_cmp_le0007_cy(10)
    );
  Mcompar_Rout_cmp_le0007_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(19),
      I3 => v_pos(20),
      O => Mcompar_Rout_cmp_le0007_lut(11)
    );
  Mcompar_Rout_cmp_le0007_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0007_lut(11),
      O => Mcompar_Rout_cmp_le0007_cy(11)
    );
  Mcompar_Rout_cmp_le0007_lut_12_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(21),
      I1 => v_pos(22),
      I2 => v_pos(23),
      I3 => v_pos(24),
      O => Mcompar_Rout_cmp_le0007_lut(12)
    );
  Mcompar_Rout_cmp_le0007_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(11),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0007_lut(12),
      O => Mcompar_Rout_cmp_le0007_cy(12)
    );
  Mcompar_Rout_cmp_le0007_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(25),
      I1 => v_pos(26),
      I2 => v_pos(27),
      I3 => v_pos(28),
      O => Mcompar_Rout_cmp_le0007_lut(13)
    );
  Mcompar_Rout_cmp_le0007_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(12),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0007_lut(13),
      O => Mcompar_Rout_cmp_le0007_cy(13)
    );
  Mcompar_Rout_cmp_le0007_lut_14_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      O => Mcompar_Rout_cmp_le0007_lut(14)
    );
  Mcompar_Rout_cmp_le0007_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(13),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0007_lut(14),
      O => Mcompar_Rout_cmp_le0007_cy(14)
    );
  Mcompar_Rout_cmp_le0007_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0007_cy(14),
      DI => v_pos(31),
      S => Mcompar_Rout_cmp_le0007_lut(15),
      O => Rout_cmp_le0007
    );
  Mcompar_Rout_cmp_le0009_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(0),
      I1 => v_pos(0),
      O => Mcompar_Rout_cmp_le0009_lut(0)
    );
  Mcompar_Rout_cmp_le0009_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => paddle_v1(0),
      S => Mcompar_Rout_cmp_le0009_lut(0),
      O => Mcompar_Rout_cmp_le0009_cy(0)
    );
  Mcompar_Rout_cmp_le0009_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(1),
      I1 => v_pos(1),
      O => Mcompar_Rout_cmp_le0009_lut(1)
    );
  Mcompar_Rout_cmp_le0009_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(0),
      DI => paddle_v1(1),
      S => Mcompar_Rout_cmp_le0009_lut(1),
      O => Mcompar_Rout_cmp_le0009_cy(1)
    );
  Mcompar_Rout_cmp_le0009_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(1),
      DI => add0002_addsub0000(2),
      S => Mcompar_Rout_cmp_le0009_lut(2),
      O => Mcompar_Rout_cmp_le0009_cy(2)
    );
  Mcompar_Rout_cmp_le0009_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(2),
      DI => add0002_addsub0000(3),
      S => Mcompar_Rout_cmp_le0009_lut(3),
      O => Mcompar_Rout_cmp_le0009_cy(3)
    );
  Mcompar_Rout_cmp_le0009_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(3),
      DI => add0002_addsub0000(4),
      S => Mcompar_Rout_cmp_le0009_lut(4),
      O => Mcompar_Rout_cmp_le0009_cy(4)
    );
  Mcompar_Rout_cmp_le0009_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => add0002_addsub0000(5),
      I1 => v_pos(5),
      O => Mcompar_Rout_cmp_le0009_lut(5)
    );
  Mcompar_Rout_cmp_le0009_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(4),
      DI => add0002_addsub0000(5),
      S => Mcompar_Rout_cmp_le0009_lut(5),
      O => Mcompar_Rout_cmp_le0009_cy(5)
    );
  Mcompar_Rout_cmp_le0009_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(5),
      DI => add0002_addsub0000(6),
      S => Mcompar_Rout_cmp_le0009_lut(6),
      O => Mcompar_Rout_cmp_le0009_cy(6)
    );
  Mcompar_Rout_cmp_le0009_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(6),
      DI => add0002_addsub0000(7),
      S => Mcompar_Rout_cmp_le0009_lut(7),
      O => Mcompar_Rout_cmp_le0009_cy(7)
    );
  Mcompar_Rout_cmp_le0009_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(8),
      I1 => add0002_addsub0000(8),
      O => Mcompar_Rout_cmp_le0009_lut(8)
    );
  Mcompar_Rout_cmp_le0009_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(7),
      DI => add0002_addsub0000(8),
      S => Mcompar_Rout_cmp_le0009_lut(8),
      O => Mcompar_Rout_cmp_le0009_cy(8)
    );
  Madd_add0002_index0000_mand : MULT_AND
    port map (
      I0 => paddle_v1(8),
      I1 => Madd_add0002_addsub0000_cy_7_Q,
      LO => Madd_add0002_index0000_mand1
    );
  Mcompar_Rout_cmp_le0009_lut_9_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => paddle_v1(8),
      I1 => v_pos(9),
      I2 => Madd_add0002_addsub0000_cy_7_Q,
      O => Mcompar_Rout_cmp_le0009_lut(9)
    );
  Mcompar_Rout_cmp_le0009_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(8),
      DI => Madd_add0002_index0000_mand1,
      S => Mcompar_Rout_cmp_le0009_lut(9),
      O => Mcompar_Rout_cmp_le0009_cy(9)
    );
  Mcompar_Rout_cmp_le0009_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(10),
      I1 => v_pos(11),
      I2 => v_pos(12),
      I3 => v_pos(13),
      O => Mcompar_Rout_cmp_le0009_lut(10)
    );
  Mcompar_Rout_cmp_le0009_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0009_lut(10),
      O => Mcompar_Rout_cmp_le0009_cy(10)
    );
  Mcompar_Rout_cmp_le0009_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(14),
      I1 => v_pos(15),
      I2 => v_pos(16),
      I3 => v_pos(17),
      O => Mcompar_Rout_cmp_le0009_lut(11)
    );
  Mcompar_Rout_cmp_le0009_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0009_lut(11),
      O => Mcompar_Rout_cmp_le0009_cy(11)
    );
  Mcompar_Rout_cmp_le0009_lut_12_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(18),
      I1 => v_pos(19),
      I2 => v_pos(20),
      I3 => v_pos(21),
      O => Mcompar_Rout_cmp_le0009_lut(12)
    );
  Mcompar_Rout_cmp_le0009_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(11),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0009_lut(12),
      O => Mcompar_Rout_cmp_le0009_cy(12)
    );
  Mcompar_Rout_cmp_le0009_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(22),
      I1 => v_pos(23),
      I2 => v_pos(24),
      I3 => v_pos(25),
      O => Mcompar_Rout_cmp_le0009_lut(13)
    );
  Mcompar_Rout_cmp_le0009_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(12),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0009_lut(13),
      O => Mcompar_Rout_cmp_le0009_cy(13)
    );
  Mcompar_Rout_cmp_le0009_lut_14_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(26),
      I1 => v_pos(27),
      I2 => v_pos(28),
      I3 => v_pos(29),
      O => Mcompar_Rout_cmp_le0009_lut(14)
    );
  Mcompar_Rout_cmp_le0009_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(13),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0009_lut(14),
      O => Mcompar_Rout_cmp_le0009_cy(14)
    );
  Mcompar_Rout_cmp_le0009_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0009_lut(15),
      O => Mcompar_Rout_cmp_le0009_cy(15)
    );
  Mcompar_Rout_cmp_le0009_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0009_cy(15),
      DI => v_pos(31),
      S => Mcompar_Rout_cmp_le0009_lut(16),
      O => Rout_cmp_le0009
    );
  Mcompar_Rout_cmp_le0011_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(0),
      I1 => v_pos(0),
      O => Mcompar_Rout_cmp_le0011_lut(0)
    );
  Mcompar_Rout_cmp_le0011_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => paddle_v2(0),
      S => Mcompar_Rout_cmp_le0011_lut(0),
      O => Mcompar_Rout_cmp_le0011_cy(0)
    );
  Mcompar_Rout_cmp_le0011_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(1),
      I1 => v_pos(1),
      O => Mcompar_Rout_cmp_le0011_lut(1)
    );
  Mcompar_Rout_cmp_le0011_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(0),
      DI => paddle_v2(1),
      S => Mcompar_Rout_cmp_le0011_lut(1),
      O => Mcompar_Rout_cmp_le0011_cy(1)
    );
  Mcompar_Rout_cmp_le0011_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(1),
      DI => add0003_addsub0000(2),
      S => Mcompar_Rout_cmp_le0011_lut(2),
      O => Mcompar_Rout_cmp_le0011_cy(2)
    );
  Mcompar_Rout_cmp_le0011_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(2),
      DI => add0003_addsub0000(3),
      S => Mcompar_Rout_cmp_le0011_lut(3),
      O => Mcompar_Rout_cmp_le0011_cy(3)
    );
  Mcompar_Rout_cmp_le0011_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(3),
      DI => add0003_addsub0000(4),
      S => Mcompar_Rout_cmp_le0011_lut(4),
      O => Mcompar_Rout_cmp_le0011_cy(4)
    );
  Mcompar_Rout_cmp_le0011_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => add0003_addsub0000(5),
      I1 => v_pos(5),
      O => Mcompar_Rout_cmp_le0011_lut(5)
    );
  Mcompar_Rout_cmp_le0011_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(4),
      DI => add0003_addsub0000(5),
      S => Mcompar_Rout_cmp_le0011_lut(5),
      O => Mcompar_Rout_cmp_le0011_cy(5)
    );
  Mcompar_Rout_cmp_le0011_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(5),
      DI => add0003_addsub0000(6),
      S => Mcompar_Rout_cmp_le0011_lut(6),
      O => Mcompar_Rout_cmp_le0011_cy(6)
    );
  Mcompar_Rout_cmp_le0011_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(6),
      DI => add0003_addsub0000(7),
      S => Mcompar_Rout_cmp_le0011_lut(7),
      O => Mcompar_Rout_cmp_le0011_cy(7)
    );
  Mcompar_Rout_cmp_le0011_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_pos(8),
      I1 => add0003_addsub0000(8),
      O => Mcompar_Rout_cmp_le0011_lut(8)
    );
  Mcompar_Rout_cmp_le0011_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(7),
      DI => add0003_addsub0000(8),
      S => Mcompar_Rout_cmp_le0011_lut(8),
      O => Mcompar_Rout_cmp_le0011_cy(8)
    );
  Madd_add0003_index0000_mand : MULT_AND
    port map (
      I0 => paddle_v2(8),
      I1 => Madd_add0003_addsub0000_cy_7_Q,
      LO => Madd_add0003_index0000_mand1
    );
  Mcompar_Rout_cmp_le0011_lut_9_Q : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => paddle_v2(8),
      I1 => v_pos(9),
      I2 => Madd_add0003_addsub0000_cy_7_Q,
      O => Mcompar_Rout_cmp_le0011_lut(9)
    );
  Mcompar_Rout_cmp_le0011_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(8),
      DI => Madd_add0003_index0000_mand1,
      S => Mcompar_Rout_cmp_le0011_lut(9),
      O => Mcompar_Rout_cmp_le0011_cy(9)
    );
  Mcompar_Rout_cmp_le0011_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(10),
      I1 => v_pos(11),
      I2 => v_pos(12),
      I3 => v_pos(13),
      O => Mcompar_Rout_cmp_le0011_lut(10)
    );
  Mcompar_Rout_cmp_le0011_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(9),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0011_lut(10),
      O => Mcompar_Rout_cmp_le0011_cy(10)
    );
  Mcompar_Rout_cmp_le0011_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(14),
      I1 => v_pos(15),
      I2 => v_pos(16),
      I3 => v_pos(17),
      O => Mcompar_Rout_cmp_le0011_lut(11)
    );
  Mcompar_Rout_cmp_le0011_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(10),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0011_lut(11),
      O => Mcompar_Rout_cmp_le0011_cy(11)
    );
  Mcompar_Rout_cmp_le0011_lut_12_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(18),
      I1 => v_pos(19),
      I2 => v_pos(20),
      I3 => v_pos(21),
      O => Mcompar_Rout_cmp_le0011_lut(12)
    );
  Mcompar_Rout_cmp_le0011_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(11),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0011_lut(12),
      O => Mcompar_Rout_cmp_le0011_cy(12)
    );
  Mcompar_Rout_cmp_le0011_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(22),
      I1 => v_pos(23),
      I2 => v_pos(24),
      I3 => v_pos(25),
      O => Mcompar_Rout_cmp_le0011_lut(13)
    );
  Mcompar_Rout_cmp_le0011_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(12),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0011_lut(13),
      O => Mcompar_Rout_cmp_le0011_cy(13)
    );
  Mcompar_Rout_cmp_le0011_lut_14_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(26),
      I1 => v_pos(27),
      I2 => v_pos(28),
      I3 => v_pos(29),
      O => Mcompar_Rout_cmp_le0011_lut(14)
    );
  Mcompar_Rout_cmp_le0011_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(13),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0011_lut(14),
      O => Mcompar_Rout_cmp_le0011_cy(14)
    );
  Mcompar_Rout_cmp_le0011_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(14),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_le0011_lut(15),
      O => Mcompar_Rout_cmp_le0011_cy(15)
    );
  Mcompar_Rout_cmp_le0011_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_le0011_cy(15),
      DI => v_pos(31),
      S => Mcompar_Rout_cmp_le0011_lut(16),
      O => Rout_cmp_le0011
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_ball_speedx_cmp_ge0002_lut(0),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(0)
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => ball_pos_v1(1),
      I1 => paddle_v1(1),
      O => Mcompar_ball_speedx_cmp_ge0002_lut(1)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(0),
      DI => ball_pos_v1(1),
      S => Mcompar_ball_speedx_cmp_ge0002_lut(1),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(1)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(1),
      DI => ball_pos_v1(2),
      S => Mcompar_ball_speedx_cmp_ge0002_lut(2),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(2)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(2),
      DI => ball_pos_v1(3),
      S => Mcompar_ball_speedx_cmp_ge0002_lut(3),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(3)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(3),
      DI => ball_pos_v1(4),
      S => Mcompar_ball_speedx_cmp_ge0002_lut(4),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(4)
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => ball_pos_v1(5),
      I1 => add0002_addsub0000(5),
      O => Mcompar_ball_speedx_cmp_ge0002_lut(5)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(4),
      DI => ball_pos_v1(5),
      S => Mcompar_ball_speedx_cmp_ge0002_lut(5),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(5)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(5),
      DI => ball_pos_v1(6),
      S => Mcompar_ball_speedx_cmp_ge0002_lut(6),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(6)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(6),
      DI => ball_pos_v1(7),
      S => Mcompar_ball_speedx_cmp_ge0002_lut(7),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(7)
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => ball_pos_v1(8),
      I1 => add0002_addsub0000(8),
      O => Mcompar_ball_speedx_cmp_ge0002_lut(8)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(7),
      DI => ball_pos_v1(8),
      S => Mcompar_ball_speedx_cmp_ge0002_lut(8),
      O => Mcompar_ball_speedx_cmp_ge0002_cy(8)
    );
  Mcompar_ball_speedx_cmp_ge0002_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0002_cy(8),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0002_index0000_inv_100,
      O => ball_speedx_cmp_ge0002
    );
  Mcompar_ball_speedx_cmp_le0002_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_ball_speedx_cmp_le0002_cy_0_rt_745,
      O => Mcompar_ball_speedx_cmp_le0002_cy(0)
    );
  Mcompar_ball_speedx_cmp_le0002_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(1),
      I1 => add0001_add0000(1),
      O => Mcompar_ball_speedx_cmp_le0002_lut(1)
    );
  Mcompar_ball_speedx_cmp_le0002_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0002_cy(0),
      DI => paddle_v1(1),
      S => Mcompar_ball_speedx_cmp_le0002_lut(1),
      O => Mcompar_ball_speedx_cmp_le0002_cy(1)
    );
  Mcompar_ball_speedx_cmp_le0002_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(2),
      I1 => add0001_add0000(2),
      O => Mcompar_ball_speedx_cmp_le0002_lut(2)
    );
  Mcompar_ball_speedx_cmp_le0002_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0002_cy(1),
      DI => paddle_v1(2),
      S => Mcompar_ball_speedx_cmp_le0002_lut(2),
      O => Mcompar_ball_speedx_cmp_le0002_cy(2)
    );
  Mcompar_ball_speedx_cmp_le0002_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(3),
      I1 => add0001_add0000(3),
      O => Mcompar_ball_speedx_cmp_le0002_lut(3)
    );
  Mcompar_ball_speedx_cmp_le0002_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0002_cy(2),
      DI => paddle_v1(3),
      S => Mcompar_ball_speedx_cmp_le0002_lut(3),
      O => Mcompar_ball_speedx_cmp_le0002_cy(3)
    );
  Mcompar_ball_speedx_cmp_le0002_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(4),
      I1 => add0001_add0000(4),
      O => Mcompar_ball_speedx_cmp_le0002_lut(4)
    );
  Mcompar_ball_speedx_cmp_le0002_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0002_cy(3),
      DI => paddle_v1(4),
      S => Mcompar_ball_speedx_cmp_le0002_lut(4),
      O => Mcompar_ball_speedx_cmp_le0002_cy(4)
    );
  Mcompar_ball_speedx_cmp_le0002_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(5),
      I1 => add0001_add0000(5),
      O => Mcompar_ball_speedx_cmp_le0002_lut(5)
    );
  Mcompar_ball_speedx_cmp_le0002_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0002_cy(4),
      DI => paddle_v1(5),
      S => Mcompar_ball_speedx_cmp_le0002_lut(5),
      O => Mcompar_ball_speedx_cmp_le0002_cy(5)
    );
  Mcompar_ball_speedx_cmp_le0002_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(6),
      I1 => add0001_add0000(6),
      O => Mcompar_ball_speedx_cmp_le0002_lut(6)
    );
  Mcompar_ball_speedx_cmp_le0002_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0002_cy(5),
      DI => paddle_v1(6),
      S => Mcompar_ball_speedx_cmp_le0002_lut(6),
      O => Mcompar_ball_speedx_cmp_le0002_cy(6)
    );
  Mcompar_ball_speedx_cmp_le0002_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(7),
      I1 => add0001_add0000(7),
      O => Mcompar_ball_speedx_cmp_le0002_lut(7)
    );
  Mcompar_ball_speedx_cmp_le0002_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0002_cy(6),
      DI => paddle_v1(7),
      S => Mcompar_ball_speedx_cmp_le0002_lut(7),
      O => Mcompar_ball_speedx_cmp_le0002_cy(7)
    );
  Mcompar_ball_speedx_cmp_le0002_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(8),
      I1 => add0001_add0000(8),
      O => Mcompar_ball_speedx_cmp_le0002_lut(8)
    );
  Mcompar_ball_speedx_cmp_le0002_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0002_cy(7),
      DI => paddle_v1(8),
      S => Mcompar_ball_speedx_cmp_le0002_lut(8),
      O => ball_speedx_cmp_le0002
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_ball_speedx_cmp_ge0003_lut(0),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(0)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => ball_pos_v1(1),
      I1 => paddle_v2(1),
      O => Mcompar_ball_speedx_cmp_ge0003_lut(1)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(0),
      DI => ball_pos_v1(1),
      S => Mcompar_ball_speedx_cmp_ge0003_lut(1),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(1)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(1),
      DI => ball_pos_v1(2),
      S => Mcompar_ball_speedx_cmp_ge0003_lut(2),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(2)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(2),
      DI => ball_pos_v1(3),
      S => Mcompar_ball_speedx_cmp_ge0003_lut(3),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(3)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(3),
      DI => ball_pos_v1(4),
      S => Mcompar_ball_speedx_cmp_ge0003_lut(4),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(4)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => ball_pos_v1(5),
      I1 => add0003_addsub0000(5),
      O => Mcompar_ball_speedx_cmp_ge0003_lut(5)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(4),
      DI => ball_pos_v1(5),
      S => Mcompar_ball_speedx_cmp_ge0003_lut(5),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(5)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(5),
      DI => ball_pos_v1(6),
      S => Mcompar_ball_speedx_cmp_ge0003_lut(6),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(6)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(6),
      DI => ball_pos_v1(7),
      S => Mcompar_ball_speedx_cmp_ge0003_lut(7),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(7)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => ball_pos_v1(8),
      I1 => add0003_addsub0000(8),
      O => Mcompar_ball_speedx_cmp_ge0003_lut(8)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(7),
      DI => ball_pos_v1(8),
      S => Mcompar_ball_speedx_cmp_ge0003_lut(8),
      O => Mcompar_ball_speedx_cmp_ge0003_cy(8)
    );
  Mcompar_ball_speedx_cmp_ge0003_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_ge0003_cy(8),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Madd_add0003_index0000_inv_104,
      O => ball_speedx_cmp_ge0003
    );
  Mcompar_ball_speedx_cmp_le0004_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => Mcompar_ball_speedx_cmp_le0004_cy_0_rt_762,
      O => Mcompar_ball_speedx_cmp_le0004_cy(0)
    );
  Mcompar_ball_speedx_cmp_le0004_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(1),
      I1 => add0001_add0000(1),
      O => Mcompar_ball_speedx_cmp_le0004_lut(1)
    );
  Mcompar_ball_speedx_cmp_le0004_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0004_cy(0),
      DI => paddle_v2(1),
      S => Mcompar_ball_speedx_cmp_le0004_lut(1),
      O => Mcompar_ball_speedx_cmp_le0004_cy(1)
    );
  Mcompar_ball_speedx_cmp_le0004_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(2),
      I1 => add0001_add0000(2),
      O => Mcompar_ball_speedx_cmp_le0004_lut(2)
    );
  Mcompar_ball_speedx_cmp_le0004_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0004_cy(1),
      DI => paddle_v2(2),
      S => Mcompar_ball_speedx_cmp_le0004_lut(2),
      O => Mcompar_ball_speedx_cmp_le0004_cy(2)
    );
  Mcompar_ball_speedx_cmp_le0004_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(3),
      I1 => add0001_add0000(3),
      O => Mcompar_ball_speedx_cmp_le0004_lut(3)
    );
  Mcompar_ball_speedx_cmp_le0004_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0004_cy(2),
      DI => paddle_v2(3),
      S => Mcompar_ball_speedx_cmp_le0004_lut(3),
      O => Mcompar_ball_speedx_cmp_le0004_cy(3)
    );
  Mcompar_ball_speedx_cmp_le0004_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(4),
      I1 => add0001_add0000(4),
      O => Mcompar_ball_speedx_cmp_le0004_lut(4)
    );
  Mcompar_ball_speedx_cmp_le0004_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0004_cy(3),
      DI => paddle_v2(4),
      S => Mcompar_ball_speedx_cmp_le0004_lut(4),
      O => Mcompar_ball_speedx_cmp_le0004_cy(4)
    );
  Mcompar_ball_speedx_cmp_le0004_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(5),
      I1 => add0001_add0000(5),
      O => Mcompar_ball_speedx_cmp_le0004_lut(5)
    );
  Mcompar_ball_speedx_cmp_le0004_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0004_cy(4),
      DI => paddle_v2(5),
      S => Mcompar_ball_speedx_cmp_le0004_lut(5),
      O => Mcompar_ball_speedx_cmp_le0004_cy(5)
    );
  Mcompar_ball_speedx_cmp_le0004_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(6),
      I1 => add0001_add0000(6),
      O => Mcompar_ball_speedx_cmp_le0004_lut(6)
    );
  Mcompar_ball_speedx_cmp_le0004_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0004_cy(5),
      DI => paddle_v2(6),
      S => Mcompar_ball_speedx_cmp_le0004_lut(6),
      O => Mcompar_ball_speedx_cmp_le0004_cy(6)
    );
  Mcompar_ball_speedx_cmp_le0004_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(7),
      I1 => add0001_add0000(7),
      O => Mcompar_ball_speedx_cmp_le0004_lut(7)
    );
  Mcompar_ball_speedx_cmp_le0004_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0004_cy(6),
      DI => paddle_v2(7),
      S => Mcompar_ball_speedx_cmp_le0004_lut(7),
      O => Mcompar_ball_speedx_cmp_le0004_cy(7)
    );
  Mcompar_ball_speedx_cmp_le0004_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(8),
      I1 => add0001_add0000(8),
      O => Mcompar_ball_speedx_cmp_le0004_lut(8)
    );
  Mcompar_ball_speedx_cmp_le0004_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_ball_speedx_cmp_le0004_cy(7),
      DI => paddle_v2(8),
      S => Mcompar_ball_speedx_cmp_le0004_lut(8),
      O => ball_speedx_cmp_le0004
    );
  h_pos_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => h_pos(8),
      I1 => h_pos(9),
      I2 => h_pos(7),
      I3 => h_pos(10),
      O => h_pos_cmp_eq0000_wg_lut(0)
    );
  h_pos_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => h_pos_cmp_eq0000_wg_lut(0),
      O => h_pos_cmp_eq0000_wg_cy(0)
    );
  h_pos_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(11),
      I1 => h_pos(12),
      I2 => h_pos(6),
      I3 => h_pos(13),
      O => h_pos_cmp_eq0000_wg_lut(1)
    );
  h_pos_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => h_pos_cmp_eq0000_wg_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => h_pos_cmp_eq0000_wg_lut(1),
      O => h_pos_cmp_eq0000_wg_cy(1)
    );
  h_pos_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_pos(14),
      I1 => h_pos(15),
      I2 => h_pos(5),
      I3 => h_pos(16),
      O => h_pos_cmp_eq0000_wg_lut(2)
    );
  h_pos_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => h_pos_cmp_eq0000_wg_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => h_pos_cmp_eq0000_wg_lut(2),
      O => h_pos_cmp_eq0000_wg_cy(2)
    );
  h_pos_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => h_pos(17),
      I1 => h_pos(18),
      I2 => h_pos(4),
      I3 => h_pos(19),
      O => h_pos_cmp_eq0000_wg_lut(3)
    );
  h_pos_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => h_pos_cmp_eq0000_wg_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => h_pos_cmp_eq0000_wg_lut(3),
      O => h_pos_cmp_eq0000_wg_cy(3)
    );
  h_pos_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => h_pos(20),
      I1 => h_pos(21),
      I2 => h_pos(3),
      I3 => h_pos(22),
      O => h_pos_cmp_eq0000_wg_lut(4)
    );
  h_pos_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => h_pos_cmp_eq0000_wg_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => h_pos_cmp_eq0000_wg_lut(4),
      O => h_pos_cmp_eq0000_wg_cy(4)
    );
  h_pos_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => h_pos(23),
      I1 => h_pos(24),
      I2 => h_pos(2),
      I3 => h_pos(25),
      O => h_pos_cmp_eq0000_wg_lut(5)
    );
  h_pos_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => h_pos_cmp_eq0000_wg_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => h_pos_cmp_eq0000_wg_lut(5),
      O => h_pos_cmp_eq0000_wg_cy(5)
    );
  h_pos_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => h_pos(26),
      I1 => h_pos(27),
      I2 => h_pos(1),
      I3 => h_pos(28),
      O => h_pos_cmp_eq0000_wg_lut(6)
    );
  h_pos_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => h_pos_cmp_eq0000_wg_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => h_pos_cmp_eq0000_wg_lut(6),
      O => h_pos_cmp_eq0000_wg_cy(6)
    );
  h_pos_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => h_pos(29),
      I1 => h_pos(30),
      I2 => h_pos(0),
      I3 => h_pos(31),
      O => h_pos_cmp_eq0000_wg_lut(7)
    );
  h_pos_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => h_pos_cmp_eq0000_wg_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => h_pos_cmp_eq0000_wg_lut(7),
      O => h_pos_cmp_eq0000
    );
  increment_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => increment(8),
      I1 => increment(9),
      I2 => increment(7),
      I3 => increment(10),
      O => increment_cmp_eq0000_wg_lut(0)
    );
  increment_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => increment_cmp_eq0000_wg_lut(0),
      O => increment_cmp_eq0000_wg_cy(0)
    );
  increment_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => increment(11),
      I1 => increment(6),
      I2 => increment(12),
      I3 => increment(13),
      O => increment_cmp_eq0000_wg_lut(1)
    );
  increment_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => increment_cmp_eq0000_wg_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => increment_cmp_eq0000_wg_lut(1),
      O => increment_cmp_eq0000_wg_cy(1)
    );
  increment_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => increment(14),
      I1 => increment(16),
      I2 => increment(15),
      I3 => increment(5),
      O => increment_cmp_eq0000_wg_lut(2)
    );
  increment_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => increment_cmp_eq0000_wg_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => increment_cmp_eq0000_wg_lut(2),
      O => increment_cmp_eq0000_wg_cy(2)
    );
  increment_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => increment(17),
      I1 => increment(18),
      I2 => increment(4),
      I3 => increment(19),
      O => increment_cmp_eq0000_wg_lut(3)
    );
  increment_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => increment_cmp_eq0000_wg_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => increment_cmp_eq0000_wg_lut(3),
      O => increment_cmp_eq0000_wg_cy(3)
    );
  increment_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => increment(20),
      I1 => increment(21),
      I2 => increment(3),
      I3 => increment(22),
      O => increment_cmp_eq0000_wg_lut(4)
    );
  increment_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => increment_cmp_eq0000_wg_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => increment_cmp_eq0000_wg_lut(4),
      O => increment_cmp_eq0000_wg_cy(4)
    );
  increment_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => increment(23),
      I1 => increment(24),
      I2 => increment(2),
      I3 => increment(25),
      O => increment_cmp_eq0000_wg_lut(5)
    );
  increment_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => increment_cmp_eq0000_wg_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => increment_cmp_eq0000_wg_lut(5),
      O => increment_cmp_eq0000_wg_cy(5)
    );
  increment_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => increment(26),
      I1 => increment(27),
      I2 => increment(1),
      I3 => increment(28),
      O => increment_cmp_eq0000_wg_lut(6)
    );
  increment_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => increment_cmp_eq0000_wg_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => increment_cmp_eq0000_wg_lut(6),
      O => increment_cmp_eq0000_wg_cy(6)
    );
  increment_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => increment(29),
      I1 => increment(30),
      I2 => increment(0),
      I3 => increment(31),
      O => increment_cmp_eq0000_wg_lut(7)
    );
  increment_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => increment_cmp_eq0000_wg_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => increment_cmp_eq0000_wg_lut(7),
      O => increment_cmp_eq0000
    );
  v_pos_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => v_pos(8),
      I1 => v_pos(7),
      I2 => v_pos(9),
      I3 => v_pos(10),
      O => v_pos_cmp_eq0000_wg_lut(0)
    );
  v_pos_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => Madd_add0000_add0000_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => v_pos_cmp_eq0000_wg_lut(0),
      O => v_pos_cmp_eq0000_wg_cy(0)
    );
  v_pos_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(11),
      I1 => v_pos(12),
      I2 => v_pos(6),
      I3 => v_pos(13),
      O => v_pos_cmp_eq0000_wg_lut(1)
    );
  v_pos_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => v_pos_cmp_eq0000_wg_cy(0),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => v_pos_cmp_eq0000_wg_lut(1),
      O => v_pos_cmp_eq0000_wg_cy(1)
    );
  v_pos_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(14),
      I1 => v_pos(15),
      I2 => v_pos(5),
      I3 => v_pos(16),
      O => v_pos_cmp_eq0000_wg_lut(2)
    );
  v_pos_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => v_pos_cmp_eq0000_wg_cy(1),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => v_pos_cmp_eq0000_wg_lut(2),
      O => v_pos_cmp_eq0000_wg_cy(2)
    );
  v_pos_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(17),
      I1 => v_pos(18),
      I2 => v_pos(4),
      I3 => v_pos(19),
      O => v_pos_cmp_eq0000_wg_lut(3)
    );
  v_pos_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => v_pos_cmp_eq0000_wg_cy(2),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => v_pos_cmp_eq0000_wg_lut(3),
      O => v_pos_cmp_eq0000_wg_cy(3)
    );
  v_pos_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => v_pos(20),
      I1 => v_pos(21),
      I2 => v_pos(3),
      I3 => v_pos(22),
      O => v_pos_cmp_eq0000_wg_lut(4)
    );
  v_pos_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => v_pos_cmp_eq0000_wg_cy(3),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => v_pos_cmp_eq0000_wg_lut(4),
      O => v_pos_cmp_eq0000_wg_cy(4)
    );
  v_pos_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => v_pos(23),
      I1 => v_pos(24),
      I2 => v_pos(2),
      I3 => v_pos(25),
      O => v_pos_cmp_eq0000_wg_lut(5)
    );
  v_pos_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => v_pos_cmp_eq0000_wg_cy(4),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => v_pos_cmp_eq0000_wg_lut(5),
      O => v_pos_cmp_eq0000_wg_cy(5)
    );
  v_pos_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(26),
      I1 => v_pos(27),
      I2 => v_pos(1),
      I3 => v_pos(28),
      O => v_pos_cmp_eq0000_wg_lut(6)
    );
  v_pos_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => v_pos_cmp_eq0000_wg_cy(5),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => v_pos_cmp_eq0000_wg_lut(6),
      O => v_pos_cmp_eq0000_wg_cy(6)
    );
  v_pos_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_pos(29),
      I1 => v_pos(30),
      I2 => v_pos(0),
      I3 => v_pos(31),
      O => v_pos_cmp_eq0000_wg_lut(7)
    );
  v_pos_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => v_pos_cmp_eq0000_wg_cy(6),
      DI => Madd_add0000_add0000_lut_0_Q,
      S => v_pos_cmp_eq0000_wg_lut(7),
      O => v_pos_cmp_eq0000
    );
  video_on_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => video_on_cmp_le0000,
      I1 => video_on_cmp_le0001,
      O => video_on_and0000
    );
  Mcount_v_pos_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(9),
      O => Mcount_v_pos_eqn_9
    );
  Mcount_v_pos_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(8),
      O => Mcount_v_pos_eqn_8
    );
  Mcount_v_pos_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(7),
      O => Mcount_v_pos_eqn_7
    );
  Mcount_v_pos_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(6),
      O => Mcount_v_pos_eqn_6
    );
  Mcount_v_pos_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(5),
      O => Mcount_v_pos_eqn_5
    );
  Mcount_v_pos_eqn_41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(4),
      O => Mcount_v_pos_eqn_4
    );
  Mcount_v_pos_eqn_32 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(3),
      O => Mcount_v_pos_eqn_3
    );
  Mcount_v_pos_eqn_210 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(2),
      O => Mcount_v_pos_eqn_2
    );
  Mcount_v_pos_eqn_110 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(1),
      O => Mcount_v_pos_eqn_1
    );
  Mcount_v_pos_eqn_01 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(0),
      O => Mcount_v_pos_eqn_0
    );
  Mcount_increment_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_9_2,
      O => Mcount_increment_eqn_9
    );
  Mcount_increment_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_8_2,
      O => Mcount_increment_eqn_8
    );
  Mcount_increment_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_7_2,
      O => Mcount_increment_eqn_7
    );
  Mcount_increment_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_6_2,
      O => Mcount_increment_eqn_6
    );
  Mcount_increment_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_5_2,
      O => Mcount_increment_eqn_5
    );
  Mcount_increment_eqn_41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_4_2,
      O => Mcount_increment_eqn_4
    );
  Mcount_increment_eqn_32 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_3_2,
      O => Mcount_increment_eqn_3
    );
  Mcount_increment_eqn_210 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_2_2,
      O => Mcount_increment_eqn_2
    );
  Mcount_increment_eqn_110 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_1_2,
      O => Mcount_increment_eqn_1
    );
  Mcount_increment_eqn_01 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_0_2,
      O => Mcount_increment_eqn_0
    );
  Mcount_h_pos_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_9_1,
      O => Mcount_h_pos_eqn_9
    );
  Mcount_h_pos_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_8_1,
      O => Mcount_h_pos_eqn_8
    );
  Mcount_h_pos_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_7_1,
      O => Mcount_h_pos_eqn_7
    );
  Mcount_h_pos_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_6_1,
      O => Mcount_h_pos_eqn_6
    );
  Mcount_h_pos_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_5_1,
      O => Mcount_h_pos_eqn_5
    );
  Mcount_h_pos_eqn_41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_4_1,
      O => Mcount_h_pos_eqn_4
    );
  Mcount_h_pos_eqn_32 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_3_1,
      O => Mcount_h_pos_eqn_3
    );
  Mcount_h_pos_eqn_210 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_2_1,
      O => Mcount_h_pos_eqn_2
    );
  Mcount_h_pos_eqn_110 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_1_1,
      O => Mcount_h_pos_eqn_1
    );
  Mcount_h_pos_eqn_01 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_0_1,
      O => Mcount_h_pos_eqn_0
    );
  Mcount_v_pos_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(10),
      O => Mcount_v_pos_eqn_10
    );
  Mcount_increment_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_10_2,
      O => Mcount_increment_eqn_10
    );
  Mcount_h_pos_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_10_1,
      O => Mcount_h_pos_eqn_10
    );
  Mcount_v_pos_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(11),
      O => Mcount_v_pos_eqn_11
    );
  Mcount_increment_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_11_2,
      O => Mcount_increment_eqn_11
    );
  Mcount_h_pos_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_11_1,
      O => Mcount_h_pos_eqn_11
    );
  Mcount_v_pos_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(12),
      O => Mcount_v_pos_eqn_12
    );
  Mcount_increment_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_12_2,
      O => Mcount_increment_eqn_12
    );
  Mcount_h_pos_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_12_1,
      O => Mcount_h_pos_eqn_12
    );
  Mcount_v_pos_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(13),
      O => Mcount_v_pos_eqn_13
    );
  Mcount_increment_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_13_2,
      O => Mcount_increment_eqn_13
    );
  Mcount_h_pos_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_13_1,
      O => Mcount_h_pos_eqn_13
    );
  ball_pos_v1_cmp_ge000014 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ball_pos_h1(1),
      I1 => ball_pos_h1(2),
      O => ball_pos_v1_cmp_ge000014_1817
    );
  Mcount_v_pos_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(14),
      O => Mcount_v_pos_eqn_14
    );
  Mcount_increment_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_14_2,
      O => Mcount_increment_eqn_14
    );
  Mcount_h_pos_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_14_1,
      O => Mcount_h_pos_eqn_14
    );
  Mcount_v_pos_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(15),
      O => Mcount_v_pos_eqn_15
    );
  Mcount_increment_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_15_2,
      O => Mcount_increment_eqn_15
    );
  Mcount_h_pos_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_15_1,
      O => Mcount_h_pos_eqn_15
    );
  Mcount_v_pos_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(16),
      O => Mcount_v_pos_eqn_16
    );
  Mcount_increment_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_16_2,
      O => Mcount_increment_eqn_16
    );
  Mcount_h_pos_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_16_1,
      O => Mcount_h_pos_eqn_16
    );
  Mcount_v_pos_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(17),
      O => Mcount_v_pos_eqn_17
    );
  Mcount_increment_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_17_2,
      O => Mcount_increment_eqn_17
    );
  Mcount_h_pos_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_17_1,
      O => Mcount_h_pos_eqn_17
    );
  Mcount_v_pos_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(18),
      O => Mcount_v_pos_eqn_18
    );
  Mcount_increment_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_18_2,
      O => Mcount_increment_eqn_18
    );
  Mcount_h_pos_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_18_1,
      O => Mcount_h_pos_eqn_18
    );
  Mcount_v_pos_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(19),
      O => Mcount_v_pos_eqn_19
    );
  Mcount_increment_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_19_2,
      O => Mcount_increment_eqn_19
    );
  Mcount_h_pos_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_19_1,
      O => Mcount_h_pos_eqn_19
    );
  Mcount_v_pos_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(20),
      O => Mcount_v_pos_eqn_20
    );
  Mcount_increment_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_20_2,
      O => Mcount_increment_eqn_20
    );
  Mcount_h_pos_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_20_1,
      O => Mcount_h_pos_eqn_20
    );
  paddle_v2_and000013 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => paddle_v2(4),
      I1 => paddle_v2(6),
      O => paddle_v2_and000013_2004
    );
  paddle_v2_and000023 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => paddle_v2(7),
      I1 => paddle_v2_and000013_2004,
      I2 => paddle_v2(5),
      I3 => paddle_v2(8),
      O => paddle_v2_and000023_2005
    );
  paddle_v1_and000013 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => paddle_v1(4),
      I1 => paddle_v1(6),
      O => paddle_v1_and000013_1988
    );
  paddle_v1_and000023 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => paddle_v1(7),
      I1 => paddle_v1_and000013_1988,
      I2 => paddle_v1(5),
      I3 => paddle_v1(8),
      O => paddle_v1_and000023_1989
    );
  Mcount_v_pos_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(21),
      O => Mcount_v_pos_eqn_21
    );
  Mcount_increment_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_21_2,
      O => Mcount_increment_eqn_21
    );
  Mcount_h_pos_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_21_1,
      O => Mcount_h_pos_eqn_21
    );
  Mcount_v_pos_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(22),
      O => Mcount_v_pos_eqn_22
    );
  Mcount_increment_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_22_2,
      O => Mcount_increment_eqn_22
    );
  Mcount_h_pos_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_22_1,
      O => Mcount_h_pos_eqn_22
    );
  Mcount_v_pos_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(23),
      O => Mcount_v_pos_eqn_23
    );
  Mcount_increment_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_23_2,
      O => Mcount_increment_eqn_23
    );
  Mcount_h_pos_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_23_1,
      O => Mcount_h_pos_eqn_23
    );
  Mcount_v_pos_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(24),
      O => Mcount_v_pos_eqn_24
    );
  Mcount_increment_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_24_2,
      O => Mcount_increment_eqn_24
    );
  Mcount_h_pos_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_24_1,
      O => Mcount_h_pos_eqn_24
    );
  Mcount_v_pos_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(25),
      O => Mcount_v_pos_eqn_25
    );
  Mcount_increment_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_25_2,
      O => Mcount_increment_eqn_25
    );
  Mcount_h_pos_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_25_1,
      O => Mcount_h_pos_eqn_25
    );
  Mcount_v_pos_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(26),
      O => Mcount_v_pos_eqn_26
    );
  Mcount_increment_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_26_2,
      O => Mcount_increment_eqn_26
    );
  Mcount_h_pos_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_26_1,
      O => Mcount_h_pos_eqn_26
    );
  Mcount_v_pos_eqn_271 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(27),
      O => Mcount_v_pos_eqn_27
    );
  Mcount_increment_eqn_271 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_27_2,
      O => Mcount_increment_eqn_27
    );
  Mcount_h_pos_eqn_271 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_27_1,
      O => Mcount_h_pos_eqn_27
    );
  Mcount_v_pos_eqn_281 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(28),
      O => Mcount_v_pos_eqn_28
    );
  Mcount_increment_eqn_281 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_28_2,
      O => Mcount_increment_eqn_28
    );
  Mcount_h_pos_eqn_281 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_28_1,
      O => Mcount_h_pos_eqn_28
    );
  Mcount_v_pos_eqn_291 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(29),
      O => Mcount_v_pos_eqn_29
    );
  Mcount_increment_eqn_291 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_29_2,
      O => Mcount_increment_eqn_29
    );
  Mcount_h_pos_eqn_291 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_29_1,
      O => Mcount_h_pos_eqn_29
    );
  Mcount_v_pos_eqn_301 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(30),
      O => Mcount_v_pos_eqn_30
    );
  Mcount_increment_eqn_301 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_30_2,
      O => Mcount_increment_eqn_30
    );
  Mcount_h_pos_eqn_301 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_30_1,
      O => Mcount_h_pos_eqn_30
    );
  Mcount_v_pos_eqn_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => v_pos_cmp_eq0000,
      I1 => Result(31),
      O => Mcount_v_pos_eqn_31
    );
  Mcount_increment_eqn_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => increment_cmp_eq0000,
      I1 => Result_31_2,
      O => Mcount_increment_eqn_31
    );
  Mcount_h_pos_eqn_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => h_pos_cmp_eq0000,
      I1 => Result_31_1,
      O => Mcount_h_pos_eqn_31
    );
  ball_speedy_cmp_le00011 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => add0001_add0000(8),
      I1 => add0001_add0000(7),
      I2 => add0001_add0000(6),
      I3 => N74,
      O => ball_speedy_cmp_le0001
    );
  ball_speedx_mux0000_0_16 : LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => ball_pos_v1(4),
      I1 => ball_pos_v1(5),
      I2 => ball_pos_v1(3),
      I3 => ball_pos_v1(2),
      O => ball_speedx_mux0000_0_16_1856
    );
  Madd_add0003_addsub0000_xor_5_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => paddle_v2(2),
      I1 => paddle_v2(5),
      I2 => paddle_v2(3),
      I3 => paddle_v2(4),
      O => add0003_addsub0000(5)
    );
  Madd_add0002_addsub0000_xor_5_11 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => paddle_v1(2),
      I1 => paddle_v1(5),
      I2 => paddle_v1(3),
      I3 => paddle_v1(4),
      O => add0002_addsub0000(5)
    );
  paddle_v2_not0001_inv2 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => SW1_IBUF_1736,
      I1 => N75,
      I2 => paddle_v2(8),
      O => paddle_v2_not0001_inv
    );
  paddle_v1_not0001_inv2 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => SW0_IBUF_1734,
      I1 => N76,
      I2 => paddle_v1(8),
      O => paddle_v1_not0001_inv
    );
  paddle_v2_cmp_lt0000115 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => paddle_v2(2),
      I1 => paddle_v2(3),
      I2 => paddle_v2(0),
      I3 => paddle_v2(1),
      O => paddle_v2_cmp_lt0000115_2006
    );
  paddle_v2_cmp_lt0000133 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => paddle_v2(7),
      I1 => paddle_v2(5),
      I2 => paddle_v2(6),
      O => paddle_v2_cmp_lt0000133_2007
    );
  paddle_v1_cmp_lt0000115 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => paddle_v1(2),
      I1 => paddle_v1(3),
      I2 => paddle_v1(0),
      I3 => paddle_v1(1),
      O => paddle_v1_cmp_lt0000115_1990
    );
  paddle_v1_cmp_lt0000133 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => paddle_v1(7),
      I1 => paddle_v1(5),
      I2 => paddle_v1(6),
      O => paddle_v1_cmp_lt0000133_1991
    );
  Madd_add0003_addsub0000_xor_4_11 : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => paddle_v2(2),
      I1 => paddle_v2(4),
      I2 => paddle_v2(3),
      O => add0003_addsub0000(4)
    );
  Madd_add0002_addsub0000_xor_4_11 : LUT3
    generic map(
      INIT => X"C9"
    )
    port map (
      I0 => paddle_v1(2),
      I1 => paddle_v1(4),
      I2 => paddle_v1(3),
      O => add0002_addsub0000(4)
    );
  Gout_mux0017_0_114 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Rout_cmp_ge0003,
      I1 => Rout_cmp_le0004,
      I2 => Rout_cmp_le0001,
      I3 => Rout_cmp_ge0001,
      O => Gout_mux0017_0_114_24
    );
  Gout_mux0017_0_1121 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Rout_cmp_ge0002,
      I1 => Rout_cmp_ge0005,
      I2 => Rout_cmp_le0002,
      I3 => Rout_cmp_le0005,
      O => Gout_mux0017_0_1121_23
    );
  Gout_mux0017_0_1149 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Rout_cmp_ge0003,
      I1 => Rout_cmp_le0004,
      I2 => Rout_cmp_le0005,
      I3 => Rout_cmp_ge0004,
      O => Gout_mux0017_0_1149_25
    );
  Gout_mux0017_0_1154 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Rout_cmp_ge0002,
      I1 => Rout_cmp_ge0001,
      I2 => Rout_cmp_le0002,
      I3 => Rout_cmp_le0003,
      O => Gout_mux0017_0_1154_26
    );
  Madd_add0003_addsub0000_xor_3_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v2(3),
      I1 => paddle_v2(2),
      O => add0003_addsub0000(3)
    );
  Madd_add0002_addsub0000_xor_3_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => paddle_v1(3),
      I1 => paddle_v1(2),
      O => add0002_addsub0000(3)
    );
  ball_pos_v1_and0000124 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => add0001_add0000(1),
      I1 => add0001_add0000(2),
      I2 => add0001_add0000(3),
      I3 => add0001_add0000(4),
      O => ball_pos_v1_and0000124_1812
    );
  ball_pos_v1_and0000157 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => ball_pos_v1(4),
      I1 => ball_pos_v1(3),
      I2 => ball_pos_v1(1),
      I3 => ball_pos_v1(2),
      O => ball_pos_v1_and0000157_1814
    );
  ball_pos_v1_and0000176 : LUT4
    generic map(
      INIT => X"F020"
    )
    port map (
      I0 => ball_pos_v1_and0000124_1812,
      I1 => add0001_add0000(5),
      I2 => ball_pos_v1_and0000166_1815,
      I3 => ball_pos_v1_and000018_1816,
      O => N14
    );
  ball_speedy_and000019 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => add0000_add0000(2),
      I1 => add0000_add0000(1),
      I2 => add0000_add0000(3),
      I3 => add0000_add0000(4),
      O => ball_speedy_and000019_1864
    );
  ball_speedy_and000049 : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => ball_pos_v1_cmp_le0001232,
      I1 => ball_speedy_and000019_1864,
      I2 => add0000_add0000(9),
      I3 => N78,
      O => ball_speedy_and000049_1865
    );
  ball_speedy_and000062 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ball_pos_h1(5),
      I1 => ball_pos_h1(8),
      I2 => ball_pos_h1(7),
      O => ball_speedy_and000062_1866
    );
  ball_speedy_and000064 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ball_pos_h1(3),
      I1 => ball_pos_h1(2),
      O => ball_speedy_and000064_1867
    );
  ball_speedy_and000069 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => ball_pos_h1(6),
      I1 => ball_pos_h1(4),
      I2 => ball_speedy_and000064_1867,
      I3 => ball_pos_h1(9),
      O => ball_speedy_and000069_1868
    );
  ball_speedy_and000090 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => ball_pos_v1(4),
      I1 => ball_pos_v1(2),
      I2 => ball_pos_v1(1),
      I3 => ball_pos_v1(3),
      O => ball_speedy_and000090_1869
    );
  ball_speedy_and0000103 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ball_pos_v1(8),
      I1 => ball_pos_v1(5),
      I2 => ball_pos_v1(6),
      I3 => ball_pos_v1(7),
      O => ball_speedy_and0000103_1862
    );
  ball_speedy_and0000165 : LUT4
    generic map(
      INIT => X"B300"
    )
    port map (
      I0 => ball_speedy_and0000116_1863,
      I1 => ball_speedy_cmp_le0001,
      I2 => ball_speedy_and000049_1865,
      I3 => N77,
      O => ball_speedy_and0000
    );
  Rout_mux0016_1_1 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => video_on_2065,
      I1 => N10,
      I2 => Rout_and0006,
      O => Rout_mux0016(1)
    );
  ball_speedx_cmp_le00052 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => add0000_add0000(9),
      I1 => add0000_add0000(8),
      I2 => add0000_add0000(7),
      I3 => N4,
      O => ball_speedx_cmp_le0005
    );
  Madd_add0003_addsub0000_xor_7_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => paddle_v2(7),
      I1 => paddle_v2(6),
      I2 => Madd_add0003_addsub0000_cy_5_Q,
      O => add0003_addsub0000(7)
    );
  Madd_add0002_addsub0000_xor_7_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => paddle_v1(7),
      I1 => paddle_v1(6),
      I2 => Madd_add0002_addsub0000_cy_5_Q,
      O => add0002_addsub0000(7)
    );
  Madd_add0003_addsub0000_xor_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => paddle_v2(6),
      I1 => Madd_add0003_addsub0000_cy_5_Q,
      O => add0003_addsub0000(6)
    );
  Madd_add0002_addsub0000_xor_6_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => paddle_v1(6),
      I1 => Madd_add0002_addsub0000_cy_5_Q,
      O => add0002_addsub0000(6)
    );
  ball_pos_v1_or00021 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_v1_cmp_ge00002,
      I2 => N84,
      O => ball_pos_v1_or0002
    );
  ball_speedx_cmp_le0003217 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => add0000_add0000(3),
      I1 => add0000_add0000(4),
      I2 => add0000_add0000(5),
      I3 => ball_speedx_cmp_le000323_1851,
      O => ball_speedx_cmp_le0003217_1850
    );
  ball_speedx_mux0000_0_2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ball_speedx_cmp_le0005,
      I1 => ball_speedx_cmp_ge0003,
      I2 => ball_speedx_cmp_le0004,
      O => ball_speedx_mux0000_0_2_1857
    );
  ball_speedx_mux0000_0_22 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ball_speedx_cmp_le0002,
      I1 => ball_speedx_cmp_gt0001,
      I2 => ball_speedx_cmp_ge0002,
      O => ball_speedx_mux0000_0_22_1858
    );
  ball_speedx_mux0000_0_61 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => ball_speedx_mux0000_0_22_1858,
      I1 => ball_speedx_mux0000_0_2_1857,
      I2 => ball_speedx_mux0000_0_122_1855,
      I3 => ball_speedx_mux0000_0_58_1859,
      O => ball_speedx_mux0000(0)
    );
  ball_speedx_and000016 : LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      I0 => N73,
      I1 => ball_speedx_cmp_ge0001,
      I2 => ball_speedx_cmp_ge0002,
      I3 => ball_speedx_cmp_le0002,
      O => ball_speedx_and000016_1836
    );
  ball_speedx_and000037 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => ball_speedx_cmp_ge0003,
      I1 => ball_speedx_cmp_le0004,
      I2 => ball_speedx_cmp_le0005,
      I3 => N80,
      O => ball_speedx_and000037_1837
    );
  ball_speedx_and000054 : LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      I0 => ball_speedx_and000016_1836,
      I1 => ball_speedx_and00000_1832,
      I2 => ball_speedx_and000037_1837,
      I3 => N311,
      O => ball_speedx_and0000
    );
  ball_speedx_cmp_le0001212 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => add0000_add0000(2),
      I1 => add0000_add0000(3),
      I2 => add0000_add0000(4),
      O => ball_speedx_cmp_le0001212_1846
    );
  ball_speedx_cmp_le0001238 : LUT4
    generic map(
      INIT => X"FD55"
    )
    port map (
      I0 => add0000_add0000(9),
      I1 => ball_speedx_cmp_le0001212_1846,
      I2 => ball_speedx_cmp_le000123,
      I3 => N79,
      O => ball_speedx_cmp_le0001
    );
  ball_speedx_and0000118 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => ball_pos_h1(4),
      I1 => ball_pos_h1(3),
      I2 => ball_pos_h1(2),
      O => ball_speedx_and0000118_1835
    );
  ball_speedx_and00001112 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ball_pos_h1(6),
      I1 => ball_pos_h1(5),
      O => ball_speedx_and00001112_1833
    );
  ball_speedx_and00001128 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ball_pos_h1(7),
      I1 => ball_pos_h1(8),
      I2 => ball_pos_h1(9),
      O => ball_speedx_and00001128_1834
    );
  ball_speedx_and00001145 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => ball_speedx_and00001112_1833,
      I1 => ball_speedx_and0000118_1835,
      I2 => ball_speedx_and00001128_1834,
      I3 => ball_speedx_cmp_le0001,
      O => N16
    );
  Gout_mux0017_0_136 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => add0001_add0000(5),
      I1 => add0001_add0000(4),
      I2 => add0001_add0000(2),
      I3 => add0001_add0000(3),
      O => Gout_mux0017_0_136_29
    );
  Gout_mux0017_0_1322 : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => add0001_add0000(8),
      I1 => Gout_mux0017_0_136_29,
      I2 => ball_speedx_cmp_gt0000,
      I3 => Gout_mux0017_0_130_27,
      O => Gout_mux0017_0_1322_28
    );
  Gout_mux0017_0_1352 : LUT4
    generic map(
      INIT => X"F8FC"
    )
    port map (
      I0 => Gout_mux0017_0_1322_28,
      I1 => Rout_and0006,
      I2 => N10,
      I3 => N16,
      O => N32
    );
  Madd_add0003_addsub0000_cy_7_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => paddle_v2(7),
      I1 => paddle_v2(6),
      I2 => N82,
      O => Madd_add0003_addsub0000_cy_7_Q
    );
  Madd_add0002_addsub0000_cy_7_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => paddle_v1(7),
      I1 => paddle_v1(6),
      I2 => N83,
      O => Madd_add0002_addsub0000_cy_7_Q
    );
  Rout_and00141 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Rout_cmp_ge0010,
      I1 => Rout_cmp_le0010,
      I2 => Rout_cmp_ge0011,
      I3 => Rout_cmp_le0011,
      O => Rout_and0014
    );
  Rout_and00061 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Rout_cmp_ge0006,
      I1 => Rout_cmp_le0006,
      I2 => Rout_cmp_ge0007,
      I3 => Rout_cmp_le0007,
      O => Rout_and0006
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_2011
    );
  SW0_IBUF : IBUF
    port map (
      I => SW0,
      O => SW0_IBUF_1734
    );
  SW1_IBUF : IBUF
    port map (
      I => SW1,
      O => SW1_IBUF_1736
    );
  h_sync_OBUF : OBUF
    port map (
      I => h_sync_OBUF_1925,
      O => h_sync
    );
  v_sync_OBUF : OBUF
    port map (
      I => v_sync_OBUF_2062,
      O => v_sync
    );
  out_clk_half_OBUF : OBUF
    port map (
      I => out_clk_half_OBUF_1977,
      O => out_clk_half
    );
  Bout_7_OBUF : OBUF
    port map (
      I => Bout_4_9,
      O => Bout(7)
    );
  Bout_6_OBUF : OBUF
    port map (
      I => Bout_4_9,
      O => Bout(6)
    );
  Bout_5_OBUF : OBUF
    port map (
      I => Bout_4_9,
      O => Bout(5)
    );
  Bout_4_OBUF : OBUF
    port map (
      I => Bout_4_9,
      O => Bout(4)
    );
  Bout_3_OBUF : OBUF
    port map (
      I => Bout_0_8,
      O => Bout(3)
    );
  Bout_2_OBUF : OBUF
    port map (
      I => Bout_0_8,
      O => Bout(2)
    );
  Bout_1_OBUF : OBUF
    port map (
      I => Bout_0_8,
      O => Bout(1)
    );
  Bout_0_OBUF : OBUF
    port map (
      I => Bout_0_8,
      O => Bout(0)
    );
  Gout_7_OBUF : OBUF
    port map (
      I => Gout_0_21,
      O => Gout(7)
    );
  Gout_6_OBUF : OBUF
    port map (
      I => Gout_0_21,
      O => Gout(6)
    );
  Gout_5_OBUF : OBUF
    port map (
      I => Gout_5_22,
      O => Gout(5)
    );
  Gout_4_OBUF : OBUF
    port map (
      I => Gout_0_21,
      O => Gout(4)
    );
  Gout_3_OBUF : OBUF
    port map (
      I => Gout_0_21,
      O => Gout(3)
    );
  Gout_2_OBUF : OBUF
    port map (
      I => Gout_0_21,
      O => Gout(2)
    );
  Gout_1_OBUF : OBUF
    port map (
      I => Gout_0_21,
      O => Gout(1)
    );
  Gout_0_OBUF : OBUF
    port map (
      I => Gout_0_21,
      O => Gout(0)
    );
  Rout_7_OBUF : OBUF
    port map (
      I => Rout_5_1703,
      O => Rout(7)
    );
  Rout_6_OBUF : OBUF
    port map (
      I => Rout_0_1702,
      O => Rout(6)
    );
  Rout_5_OBUF : OBUF
    port map (
      I => Rout_5_1703,
      O => Rout(5)
    );
  Rout_4_OBUF : OBUF
    port map (
      I => Rout_0_1702,
      O => Rout(4)
    );
  Rout_3_OBUF : OBUF
    port map (
      I => Rout_0_1702,
      O => Rout(3)
    );
  Rout_2_OBUF : OBUF
    port map (
      I => Rout_0_1702,
      O => Rout(2)
    );
  Rout_1_OBUF : OBUF
    port map (
      I => Rout_0_1702,
      O => Rout(1)
    );
  Rout_0_OBUF : OBUF
    port map (
      I => Rout_0_1702,
      O => Rout(0)
    );
  clk_half : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1873,
      D => Madd_add0000_add0000_cy(0),
      R => clk_half1,
      Q => clk_half1
    );
  Madd_add0000_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_h1(1),
      O => Madd_add0000_add0000_cy_1_rt_67
    );
  Madd_add0000_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_h1(3),
      O => Madd_add0000_add0000_cy_3_rt_70
    );
  Madd_add0000_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_h1(4),
      O => Madd_add0000_add0000_cy_4_rt_72
    );
  Madd_add0000_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_h1(5),
      O => Madd_add0000_add0000_cy_5_rt_74
    );
  Madd_add0000_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_h1(6),
      O => Madd_add0000_add0000_cy_6_rt_76
    );
  Madd_add0000_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_h1(7),
      O => Madd_add0000_add0000_cy_7_rt_78
    );
  Madd_add0000_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_h1(8),
      O => Madd_add0000_add0000_cy_8_rt_80
    );
  Madd_add0001_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_v1(3),
      O => Madd_add0001_add0000_cy_3_rt_86
    );
  Madd_add0001_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_v1(4),
      O => Madd_add0001_add0000_cy_4_rt_88
    );
  Madd_add0001_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_v1(5),
      O => Madd_add0001_add0000_cy_5_rt_90
    );
  Madd_add0001_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_v1(6),
      O => Madd_add0001_add0000_cy_6_rt_92
    );
  Madd_add0001_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_v1(7),
      O => Madd_add0001_add0000_cy_7_rt_94
    );
  Mcompar_video_on_cmp_le0001_cy_1_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(3),
      O => Mcompar_video_on_cmp_le0001_cy_1_0_rt_1017
    );
  Mcompar_video_on_cmp_le0001_cy_1_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_cy_1_1_rt_1019
    );
  Mcompar_video_on_cmp_le0001_cy_3_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(4),
      O => Mcompar_video_on_cmp_le0001_cy_3_1_rt_1050
    );
  Mcompar_video_on_cmp_le0001_cy_3_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(4),
      O => Mcompar_video_on_cmp_le0001_cy_3_2_rt_1051
    );
  Mcompar_video_on_cmp_le0001_cy_1_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(5),
      O => Mcompar_video_on_cmp_le0001_cy_1_4_rt_1020
    );
  Mcompar_video_on_cmp_le0001_cy_3_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(7),
      O => Mcompar_video_on_cmp_le0001_cy_3_4_rt_1052
    );
  Mcompar_video_on_cmp_le0001_cy_1_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_cy_1_5_rt_1021
    );
  Mcompar_video_on_cmp_le0001_cy_1_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(1),
      O => Mcompar_video_on_cmp_le0001_cy_1_6_rt_1022
    );
  Mcompar_video_on_cmp_le0001_cy_4_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(7),
      O => Mcompar_video_on_cmp_le0001_cy_4_6_rt_1066
    );
  Mcompar_video_on_cmp_le0001_cy_1_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(4),
      O => Mcompar_video_on_cmp_le0001_cy_1_7_rt_1023
    );
  Mcompar_video_on_cmp_le0001_cy_1_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_cy_1_8_rt_1024
    );
  Mcompar_video_on_cmp_le0001_cy_3_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(6),
      O => Mcompar_video_on_cmp_le0001_cy_3_8_rt_1053
    );
  Mcompar_video_on_cmp_le0001_cy_5_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(8),
      O => Mcompar_video_on_cmp_le0001_cy_5_8_rt_1079
    );
  Mcompar_video_on_cmp_le0001_cy_1_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(3),
      O => Mcompar_video_on_cmp_le0001_cy_1_9_rt_1025
    );
  Mcompar_video_on_cmp_le0001_cy_1_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(3),
      O => Mcompar_video_on_cmp_le0001_cy_1_10_rt_1018
    );
  Mcompar_video_on_cmp_le0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcompar_video_on_cmp_le0000_cy_1_rt_810
    );
  Mcompar_video_on_cmp_le0000_cy_1_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(7),
      O => Mcompar_video_on_cmp_le0000_cy_1_0_rt_806
    );
  Mcompar_video_on_cmp_le0000_cy_3_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcompar_video_on_cmp_le0000_cy_3_0_rt_829
    );
  Mcompar_video_on_cmp_le0000_cy_3_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcompar_video_on_cmp_le0000_cy_3_1_rt_830
    );
  Mcompar_video_on_cmp_le0000_cy_1_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(2),
      O => Mcompar_video_on_cmp_le0000_cy_1_2_rt_807
    );
  Mcompar_video_on_cmp_le0000_cy_3_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(4),
      O => Mcompar_video_on_cmp_le0000_cy_3_2_rt_831
    );
  Mcompar_video_on_cmp_le0000_cy_1_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(1),
      O => Mcompar_video_on_cmp_le0000_cy_1_3_rt_808
    );
  Mcompar_video_on_cmp_le0000_cy_5_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcompar_video_on_cmp_le0000_cy_5_3_rt_852
    );
  Mcompar_video_on_cmp_le0000_cy_5_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcompar_video_on_cmp_le0000_cy_5_4_rt_853
    );
  Mcompar_video_on_cmp_le0000_cy_3_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(8),
      O => Mcompar_video_on_cmp_le0000_cy_3_5_rt_832
    );
  Mcompar_video_on_cmp_le0000_cy_1_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(1),
      O => Mcompar_video_on_cmp_le0000_cy_1_6_rt_809
    );
  Mcompar_video_on_cmp_le0000_cy_3_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(6),
      O => Mcompar_video_on_cmp_le0000_cy_3_7_rt_833
    );
  Mcompar_video_on_cmp_le0000_cy_5_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcompar_video_on_cmp_le0000_cy_5_7_rt_854
    );
  Mcompar_Rout_cmp_ge0001_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(1),
      O => Mcompar_Rout_cmp_ge0001_cy_0_rt_285
    );
  Mcompar_Rout_cmp_ge0001_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(3),
      O => Mcompar_Rout_cmp_ge0001_cy_2_rt_314
    );
  Mcompar_Rout_cmp_ge0001_cy_2_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(5),
      O => Mcompar_Rout_cmp_ge0001_cy_2_0_rt_311
    );
  Mcompar_Rout_cmp_ge0001_cy_4_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(8),
      O => Mcompar_Rout_cmp_ge0001_cy_4_0_rt_331
    );
  Mcompar_Rout_cmp_ge0001_cy_2_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(3),
      O => Mcompar_Rout_cmp_ge0001_cy_2_2_rt_312
    );
  Mcompar_Rout_cmp_ge0001_cy_4_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(6),
      O => Mcompar_Rout_cmp_ge0001_cy_4_2_rt_332
    );
  Mcompar_Rout_cmp_ge0001_cy_2_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(4),
      O => Mcompar_Rout_cmp_ge0001_cy_2_3_rt_313
    );
  Mcompar_Rout_cmp_ge0001_cy_4_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(7),
      O => Mcompar_Rout_cmp_ge0001_cy_4_3_rt_333
    );
  Mcompar_Rout_cmp_ge0001_cy_0_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(0),
      O => Mcompar_Rout_cmp_ge0001_cy_0_4_rt_283
    );
  Mcompar_Rout_cmp_ge0001_cy_4_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(8),
      O => Mcompar_Rout_cmp_ge0001_cy_4_5_rt_334
    );
  Mcompar_Rout_cmp_ge0001_cy_0_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(0),
      O => Mcompar_Rout_cmp_ge0001_cy_0_6_rt_284
    );
  Mcompar_Rout_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(1),
      O => Mcompar_Rout_cmp_ge0000_cy_0_rt_149
    );
  Mcompar_Rout_cmp_ge0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(3),
      O => Mcompar_Rout_cmp_ge0000_cy_2_rt_172
    );
  Mcompar_Rout_cmp_ge0000_cy_0_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(2),
      O => Mcompar_Rout_cmp_ge0000_cy_0_0_rt_144
    );
  Mcompar_Rout_cmp_ge0000_cy_2_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(4),
      O => Mcompar_Rout_cmp_ge0000_cy_2_0_rt_168
    );
  Mcompar_Rout_cmp_ge0000_cy_0_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(1),
      O => Mcompar_Rout_cmp_ge0000_cy_0_1_rt_145
    );
  Mcompar_Rout_cmp_ge0000_cy_4_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcompar_Rout_cmp_ge0000_cy_4_1_rt_185
    );
  Mcompar_Rout_cmp_ge0000_cy_0_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(0),
      O => Mcompar_Rout_cmp_ge0000_cy_0_2_rt_146
    );
  Mcompar_Rout_cmp_ge0000_cy_2_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(2),
      O => Mcompar_Rout_cmp_ge0000_cy_2_2_rt_169
    );
  Mcompar_Rout_cmp_ge0000_cy_4_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(6),
      O => Mcompar_Rout_cmp_ge0000_cy_4_2_rt_186
    );
  Mcompar_Rout_cmp_ge0000_cy_6_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(8),
      O => Mcompar_Rout_cmp_ge0000_cy_6_2_rt_200
    );
  Mcompar_Rout_cmp_ge0000_cy_0_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(3),
      O => Mcompar_Rout_cmp_ge0000_cy_0_3_rt_147
    );
  Mcompar_Rout_cmp_ge0000_cy_2_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(5),
      O => Mcompar_Rout_cmp_ge0000_cy_2_3_rt_170
    );
  Mcompar_Rout_cmp_ge0000_cy_0_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(2),
      O => Mcompar_Rout_cmp_ge0000_cy_0_4_rt_148
    );
  Mcompar_Rout_cmp_ge0000_cy_2_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(6),
      O => Mcompar_Rout_cmp_ge0000_cy_2_4_rt_171
    );
  Mcompar_Rout_cmp_ge0000_cy_4_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcompar_Rout_cmp_ge0000_cy_4_4_rt_187
    );
  Mcompar_Rout_cmp_ge0006_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(0),
      O => Mcompar_Rout_cmp_ge0006_cy_0_rt_455
    );
  Mcount_v_pos_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(1),
      O => Mcount_v_pos_cy_1_rt_1458
    );
  Mcount_v_pos_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(2),
      O => Mcount_v_pos_cy_2_rt_1480
    );
  Mcount_v_pos_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(3),
      O => Mcount_v_pos_cy_3_rt_1484
    );
  Mcount_v_pos_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(4),
      O => Mcount_v_pos_cy_4_rt_1486
    );
  Mcount_v_pos_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(5),
      O => Mcount_v_pos_cy_5_rt_1488
    );
  Mcount_v_pos_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(6),
      O => Mcount_v_pos_cy_6_rt_1490
    );
  Mcount_v_pos_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(7),
      O => Mcount_v_pos_cy_7_rt_1492
    );
  Mcount_v_pos_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(8),
      O => Mcount_v_pos_cy_8_rt_1494
    );
  Mcount_v_pos_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(9),
      O => Mcount_v_pos_cy_9_rt_1496
    );
  Mcount_v_pos_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(10),
      O => Mcount_v_pos_cy_10_rt_1438
    );
  Mcount_v_pos_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(11),
      O => Mcount_v_pos_cy_11_rt_1440
    );
  Mcount_v_pos_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(12),
      O => Mcount_v_pos_cy_12_rt_1442
    );
  Mcount_v_pos_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(13),
      O => Mcount_v_pos_cy_13_rt_1444
    );
  Mcount_v_pos_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(14),
      O => Mcount_v_pos_cy_14_rt_1446
    );
  Mcount_v_pos_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(15),
      O => Mcount_v_pos_cy_15_rt_1448
    );
  Mcount_v_pos_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(16),
      O => Mcount_v_pos_cy_16_rt_1450
    );
  Mcount_v_pos_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(17),
      O => Mcount_v_pos_cy_17_rt_1452
    );
  Mcount_v_pos_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(18),
      O => Mcount_v_pos_cy_18_rt_1454
    );
  Mcount_v_pos_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(19),
      O => Mcount_v_pos_cy_19_rt_1456
    );
  Mcount_v_pos_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(20),
      O => Mcount_v_pos_cy_20_rt_1460
    );
  Mcount_v_pos_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(21),
      O => Mcount_v_pos_cy_21_rt_1462
    );
  Mcount_v_pos_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(22),
      O => Mcount_v_pos_cy_22_rt_1464
    );
  Mcount_v_pos_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(23),
      O => Mcount_v_pos_cy_23_rt_1466
    );
  Mcount_v_pos_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(24),
      O => Mcount_v_pos_cy_24_rt_1468
    );
  Mcount_v_pos_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(25),
      O => Mcount_v_pos_cy_25_rt_1470
    );
  Mcount_v_pos_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(26),
      O => Mcount_v_pos_cy_26_rt_1472
    );
  Mcount_v_pos_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(27),
      O => Mcount_v_pos_cy_27_rt_1474
    );
  Mcount_v_pos_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(28),
      O => Mcount_v_pos_cy_28_rt_1476
    );
  Mcount_v_pos_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(29),
      O => Mcount_v_pos_cy_29_rt_1478
    );
  Mcount_v_pos_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(30),
      O => Mcount_v_pos_cy_30_rt_1482
    );
  Mcount_h_pos_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(1),
      O => Mcount_h_pos_cy_1_rt_1268
    );
  Mcount_h_pos_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(2),
      O => Mcount_h_pos_cy_2_rt_1290
    );
  Mcount_h_pos_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(3),
      O => Mcount_h_pos_cy_3_rt_1294
    );
  Mcount_h_pos_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(4),
      O => Mcount_h_pos_cy_4_rt_1296
    );
  Mcount_h_pos_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(5),
      O => Mcount_h_pos_cy_5_rt_1298
    );
  Mcount_h_pos_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(6),
      O => Mcount_h_pos_cy_6_rt_1300
    );
  Mcount_h_pos_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(7),
      O => Mcount_h_pos_cy_7_rt_1302
    );
  Mcount_h_pos_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(8),
      O => Mcount_h_pos_cy_8_rt_1304
    );
  Mcount_h_pos_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(9),
      O => Mcount_h_pos_cy_9_rt_1306
    );
  Mcount_h_pos_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(10),
      O => Mcount_h_pos_cy_10_rt_1248
    );
  Mcount_h_pos_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(11),
      O => Mcount_h_pos_cy_11_rt_1250
    );
  Mcount_h_pos_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(12),
      O => Mcount_h_pos_cy_12_rt_1252
    );
  Mcount_h_pos_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(13),
      O => Mcount_h_pos_cy_13_rt_1254
    );
  Mcount_h_pos_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(14),
      O => Mcount_h_pos_cy_14_rt_1256
    );
  Mcount_h_pos_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(15),
      O => Mcount_h_pos_cy_15_rt_1258
    );
  Mcount_h_pos_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(16),
      O => Mcount_h_pos_cy_16_rt_1260
    );
  Mcount_h_pos_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(17),
      O => Mcount_h_pos_cy_17_rt_1262
    );
  Mcount_h_pos_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(18),
      O => Mcount_h_pos_cy_18_rt_1264
    );
  Mcount_h_pos_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(19),
      O => Mcount_h_pos_cy_19_rt_1266
    );
  Mcount_h_pos_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(20),
      O => Mcount_h_pos_cy_20_rt_1270
    );
  Mcount_h_pos_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(21),
      O => Mcount_h_pos_cy_21_rt_1272
    );
  Mcount_h_pos_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(22),
      O => Mcount_h_pos_cy_22_rt_1274
    );
  Mcount_h_pos_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(23),
      O => Mcount_h_pos_cy_23_rt_1276
    );
  Mcount_h_pos_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(24),
      O => Mcount_h_pos_cy_24_rt_1278
    );
  Mcount_h_pos_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(25),
      O => Mcount_h_pos_cy_25_rt_1280
    );
  Mcount_h_pos_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(26),
      O => Mcount_h_pos_cy_26_rt_1282
    );
  Mcount_h_pos_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(27),
      O => Mcount_h_pos_cy_27_rt_1284
    );
  Mcount_h_pos_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(28),
      O => Mcount_h_pos_cy_28_rt_1286
    );
  Mcount_h_pos_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(29),
      O => Mcount_h_pos_cy_29_rt_1288
    );
  Mcount_h_pos_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(30),
      O => Mcount_h_pos_cy_30_rt_1292
    );
  Mcount_increment_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(1),
      O => Mcount_increment_cy_1_rt_1363
    );
  Mcount_increment_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(2),
      O => Mcount_increment_cy_2_rt_1385
    );
  Mcount_increment_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(3),
      O => Mcount_increment_cy_3_rt_1389
    );
  Mcount_increment_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(4),
      O => Mcount_increment_cy_4_rt_1391
    );
  Mcount_increment_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(5),
      O => Mcount_increment_cy_5_rt_1393
    );
  Mcount_increment_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(6),
      O => Mcount_increment_cy_6_rt_1395
    );
  Mcount_increment_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(7),
      O => Mcount_increment_cy_7_rt_1397
    );
  Mcount_increment_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(8),
      O => Mcount_increment_cy_8_rt_1399
    );
  Mcount_increment_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(9),
      O => Mcount_increment_cy_9_rt_1401
    );
  Mcount_increment_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(10),
      O => Mcount_increment_cy_10_rt_1343
    );
  Mcount_increment_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(11),
      O => Mcount_increment_cy_11_rt_1345
    );
  Mcount_increment_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(12),
      O => Mcount_increment_cy_12_rt_1347
    );
  Mcount_increment_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(13),
      O => Mcount_increment_cy_13_rt_1349
    );
  Mcount_increment_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(14),
      O => Mcount_increment_cy_14_rt_1351
    );
  Mcount_increment_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(15),
      O => Mcount_increment_cy_15_rt_1353
    );
  Mcount_increment_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(16),
      O => Mcount_increment_cy_16_rt_1355
    );
  Mcount_increment_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(17),
      O => Mcount_increment_cy_17_rt_1357
    );
  Mcount_increment_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(18),
      O => Mcount_increment_cy_18_rt_1359
    );
  Mcount_increment_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(19),
      O => Mcount_increment_cy_19_rt_1361
    );
  Mcount_increment_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(20),
      O => Mcount_increment_cy_20_rt_1365
    );
  Mcount_increment_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(21),
      O => Mcount_increment_cy_21_rt_1367
    );
  Mcount_increment_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(22),
      O => Mcount_increment_cy_22_rt_1369
    );
  Mcount_increment_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(23),
      O => Mcount_increment_cy_23_rt_1371
    );
  Mcount_increment_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(24),
      O => Mcount_increment_cy_24_rt_1373
    );
  Mcount_increment_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(25),
      O => Mcount_increment_cy_25_rt_1375
    );
  Mcount_increment_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(26),
      O => Mcount_increment_cy_26_rt_1377
    );
  Mcount_increment_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(27),
      O => Mcount_increment_cy_27_rt_1379
    );
  Mcount_increment_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(28),
      O => Mcount_increment_cy_28_rt_1381
    );
  Mcount_increment_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(29),
      O => Mcount_increment_cy_29_rt_1383
    );
  Mcount_increment_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(30),
      O => Mcount_increment_cy_30_rt_1387
    );
  Mcompar_ball_speedx_cmp_le0002_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => paddle_v1(0),
      O => Mcompar_ball_speedx_cmp_le0002_cy_0_rt_745
    );
  Mcompar_ball_speedx_cmp_le0004_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => paddle_v2(0),
      O => Mcompar_ball_speedx_cmp_le0004_cy_0_rt_762
    );
  Madd_add0000_add0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_h1(9),
      O => Madd_add0000_add0000_xor_9_rt_83
    );
  Madd_add0001_add0000_xor_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_v1(1),
      O => Madd_add0001_add0000_xor_1_rt_96
    );
  Madd_add0001_add0000_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_pos_v1(8),
      O => Madd_add0001_add0000_xor_8_rt_97
    );
  Mcount_v_pos_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_pos(31),
      O => Mcount_v_pos_xor_31_rt_1530
    );
  Mcount_h_pos_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_pos(31),
      O => Mcount_h_pos_xor_31_rt_1340
    );
  Mcount_increment_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => increment(31),
      O => Mcount_increment_xor_31_rt_1435
    );
  Rout_and000711 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Mcompar_Rout_cmp_ge0000_cy(13),
      I1 => Mcompar_video_on_cmp_le0000_cy_10_4_791,
      O => N33
    );
  Gout_mux0017_0_1164 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Gout_mux0017_0_1154_26,
      I1 => Gout_mux0017_0_1149_25,
      I2 => Gout_mux0017_0_1121_23,
      I3 => N131,
      O => N10
    );
  Madd_add0003_addsub0000_xor_8_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => paddle_v2(8),
      I1 => paddle_v2(7),
      I2 => paddle_v2(6),
      I3 => Madd_add0003_addsub0000_cy_5_Q,
      O => add0003_addsub0000(8)
    );
  Madd_add0002_addsub0000_xor_8_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => paddle_v1(8),
      I1 => paddle_v1(7),
      I2 => paddle_v1(6),
      I3 => Madd_add0002_addsub0000_cy_5_Q,
      O => add0002_addsub0000(8)
    );
  Mcompar_Rout_cmp_le0009_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => paddle_v1(7),
      I1 => Madd_add0002_addsub0000_cy_5_Q,
      I2 => v_pos(7),
      I3 => paddle_v1(6),
      O => Mcompar_Rout_cmp_le0009_lut(7)
    );
  Mcompar_Rout_cmp_le0011_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => paddle_v2(7),
      I1 => Madd_add0003_addsub0000_cy_5_Q,
      I2 => v_pos(7),
      I3 => paddle_v2(6),
      O => Mcompar_Rout_cmp_le0011_lut(7)
    );
  Mcompar_Rout_cmp_le0009_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => paddle_v1(6),
      I1 => Madd_add0002_addsub0000_cy_5_Q,
      I2 => v_pos(6),
      O => Mcompar_Rout_cmp_le0009_lut(6)
    );
  Mcompar_Rout_cmp_le0011_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => paddle_v2(6),
      I1 => Madd_add0003_addsub0000_cy_5_Q,
      I2 => v_pos(6),
      O => Mcompar_Rout_cmp_le0011_lut(6)
    );
  ball_pos_v1_and0000166 : LUT4
    generic map(
      INIT => X"5400"
    )
    port map (
      I0 => rst_IBUF_2011,
      I1 => ball_pos_v1_and0000157_1814,
      I2 => ball_pos_v1_and0000151_1813,
      I3 => increment_cmp_eq0000,
      O => ball_pos_v1_and0000166_1815
    );
  ball_pos_v1_and00001 : LUT4
    generic map(
      INIT => X"F4F0"
    )
    port map (
      I0 => rst_IBUF_2011,
      I1 => increment_cmp_eq0000,
      I2 => N14,
      I3 => ball_pos_v1_or0002,
      O => ball_pos_v1_and0000
    );
  Rout_and00131_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Rout_cmp_ge0009,
      I1 => Rout_cmp_le0008,
      I2 => Rout_cmp_ge0008,
      O => N21
    );
  Rout_mux0016_0_Q : LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      I0 => video_on_2065,
      I1 => Rout_and0006,
      I2 => N10,
      I3 => N30,
      O => Rout_mux0016(0)
    );
  Gout_mux0017_0_1164_SW0_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Rout_cmp_le0001,
      I1 => Rout_cmp_ge0001,
      I2 => Rout_cmp_le0005,
      I3 => Rout_cmp_ge0004,
      O => N321
    );
  Bout_mux0016_0_2124 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Mcompar_Rout_cmp_ge0000_cy(13),
      I1 => Mcompar_video_on_cmp_le0000_cy_10_4_791,
      I2 => N39,
      O => Bout_mux0016_0_2124_11
    );
  ball_pos_v1_cmp_le0001224_SW0 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => add0000_add0000(5),
      I1 => add0000_add0000(4),
      I2 => add0000_add0000(3),
      I3 => N41,
      O => N28
    );
  Gout_mux0017_0_2 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => video_on_2065,
      I1 => Rout_and0006,
      I2 => N48,
      I3 => N32,
      O => N15
    );
  Bout_mux0016_0_21100 : LUT4
    generic map(
      INIT => X"D500"
    )
    port map (
      I0 => N33,
      I1 => N50,
      I2 => N46,
      I3 => Bout_mux0016_0_2124_11,
      O => N13
    );
  Bout_mux0016_0_2177_SW0 : LUT4
    generic map(
      INIT => X"FCA8"
    )
    port map (
      I0 => Mcompar_video_on_cmp_le0001_cy_10_3_996,
      I1 => Mcompar_Rout_cmp_ge0001_cy_9_4_371,
      I2 => Mcompar_video_on_cmp_le0001_cy_10_2_995,
      I3 => Mcompar_Rout_cmp_ge0001_cy_11_1_292,
      O => N50
    );
  Bout_mux0016_0_Q : LUT4
    generic map(
      INIT => X"A2A0"
    )
    port map (
      I0 => video_on_2065,
      I1 => Rout_and0006,
      I2 => N10,
      I3 => N52,
      O => Bout_mux0016_0_Q_10
    );
  Bout_mux0016_4_1_SW2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N13,
      I1 => N81,
      O => N54
    );
  Bout_mux0016_4_1 : LUT4
    generic map(
      INIT => X"A2A0"
    )
    port map (
      I0 => video_on_2065,
      I1 => Rout_and0006,
      I2 => N10,
      I3 => N54,
      O => Bout_mux0016_4_Q
    );
  Madd_add0002_index0000_inv : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => paddle_v1(8),
      I1 => Madd_add0002_addsub0000_cy_7_Q,
      O => Madd_add0002_index0000_inv_100
    );
  Madd_add0003_index0000_inv : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => paddle_v2(8),
      I1 => Madd_add0003_addsub0000_cy_7_Q,
      O => Madd_add0003_index0000_inv_104
    );
  ball_pos_h1_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      I0 => ball_pos_v1_cmp_ge00002,
      I1 => ball_pos_h1(9),
      I2 => ball_pos_h1_addsub0000(8),
      I3 => ball_pos_v1_cmp_le0001,
      O => ball_pos_h1_mux0000(1)
    );
  ball_pos_v1_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      I0 => ball_pos_v1_cmp_ge00002,
      I1 => ball_pos_h1(9),
      I2 => ball_pos_v1_addsub0000(7),
      I3 => ball_pos_v1_cmp_le0001,
      O => ball_pos_v1_mux0000(1)
    );
  ball_pos_v1_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      I0 => ball_pos_v1_cmp_ge00002,
      I1 => ball_pos_h1(9),
      I2 => ball_pos_v1_addsub0000(6),
      I3 => ball_pos_v1_cmp_le0001,
      O => ball_pos_v1_mux0000(2)
    );
  ball_pos_v1_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      I0 => ball_pos_v1_cmp_ge00002,
      I1 => ball_pos_h1(9),
      I2 => ball_pos_v1_addsub0000(5),
      I3 => ball_pos_v1_cmp_le0001,
      O => ball_pos_v1_mux0000(3)
    );
  ball_pos_h1_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      I0 => ball_pos_v1_cmp_ge00002,
      I1 => ball_pos_h1(9),
      I2 => ball_pos_h1_addsub0000(5),
      I3 => ball_pos_v1_cmp_le0001,
      O => ball_pos_h1_mux0000(4)
    );
  ball_pos_v1_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      I0 => ball_pos_v1_cmp_ge00002,
      I1 => ball_pos_h1(9),
      I2 => ball_pos_v1_addsub0000(4),
      I3 => ball_pos_v1_cmp_le0001,
      O => ball_pos_v1_mux0000(4)
    );
  ball_pos_h1_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      I0 => ball_pos_v1_cmp_ge00002,
      I1 => ball_pos_h1(9),
      I2 => ball_pos_h1_addsub0000(4),
      I3 => ball_pos_v1_cmp_le0001,
      O => ball_pos_h1_mux0000(5)
    );
  ball_pos_h1_mux0000_0_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_h1_addsub0000(9),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_h1_mux0000(0)
    );
  ball_pos_v1_mux0000_0_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_v1_addsub0000(8),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_v1_mux0000(0)
    );
  ball_pos_h1_mux0000_2_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_h1_addsub0000(7),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_h1_mux0000(2)
    );
  ball_pos_h1_mux0000_3_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_h1_addsub0000(6),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_h1_mux0000(3)
    );
  ball_pos_v1_mux0000_5_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_v1_addsub0000(3),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_v1_mux0000(5)
    );
  ball_pos_h1_mux0000_6_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_h1_addsub0000(3),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_h1_mux0000(6)
    );
  ball_pos_v1_mux0000_6_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_v1_addsub0000(2),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_v1_mux0000(6)
    );
  ball_pos_h1_mux0000_7_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_h1_addsub0000(2),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_h1_mux0000(7)
    );
  ball_pos_v1_mux0000_7_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_v1_addsub0000(1),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_v1_mux0000(7)
    );
  ball_pos_h1_mux0000_8_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_h1_addsub0000(1),
      I2 => ball_pos_v1_cmp_le0001,
      I3 => ball_pos_v1_cmp_ge00002,
      O => ball_pos_h1_mux0000(8)
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => ball_pos_v1(6),
      I1 => paddle_v1(6),
      I2 => Madd_add0002_addsub0000_cy_5_Q,
      O => Mcompar_ball_speedx_cmp_ge0002_lut(6)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_6_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => ball_pos_v1(6),
      I1 => paddle_v2(6),
      I2 => Madd_add0003_addsub0000_cy_5_Q,
      O => Mcompar_ball_speedx_cmp_ge0003_lut(6)
    );
  Mcompar_Rout_cmp_le0009_lut_4_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => paddle_v1(4),
      I1 => paddle_v1(2),
      I2 => v_pos(4),
      I3 => paddle_v1(3),
      O => Mcompar_Rout_cmp_le0009_lut(4)
    );
  Mcompar_Rout_cmp_le0011_lut_4_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => paddle_v2(4),
      I1 => paddle_v2(2),
      I2 => v_pos(4),
      I3 => paddle_v2(3),
      O => Mcompar_Rout_cmp_le0011_lut(4)
    );
  Mcompar_Rout_cmp_le0009_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => paddle_v1(3),
      I1 => paddle_v1(2),
      I2 => v_pos(3),
      O => Mcompar_Rout_cmp_le0009_lut(3)
    );
  Mcompar_Rout_cmp_le0011_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => paddle_v2(3),
      I1 => paddle_v2(2),
      I2 => v_pos(3),
      O => Mcompar_Rout_cmp_le0011_lut(3)
    );
  Mcompar_Rout_cmp_le0009_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => paddle_v1(2),
      I1 => v_pos(2),
      O => Mcompar_Rout_cmp_le0009_lut(2)
    );
  Mcompar_Rout_cmp_le0011_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => paddle_v2(2),
      I1 => v_pos(2),
      O => Mcompar_Rout_cmp_le0011_lut(2)
    );
  ball_speedx_mux0000_0_123 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => ball_speedx_cmp_le0002,
      I1 => N1,
      I2 => ball_speedx_cmp_le0001,
      I3 => N56,
      O => ball_speedx_mux0000_0_122_1855
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => ball_pos_v1(7),
      I1 => Madd_add0002_addsub0000_cy_5_Q,
      I2 => paddle_v1(7),
      I3 => paddle_v1(6),
      O => Mcompar_ball_speedx_cmp_ge0002_lut(7)
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(2),
      I1 => paddle_v1(2),
      O => Mcompar_ball_speedx_cmp_ge0002_lut(2)
    );
  Gout_mux0017_2_1 : MUXF5
    port map (
      I0 => N58,
      I1 => N59,
      S => Rout_and0006,
      O => Gout_mux0017(2)
    );
  Gout_mux0017_2_1_F : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => video_on_2065,
      I1 => N13,
      I2 => Rout_and0013,
      I3 => N10,
      O => N58
    );
  Gout_mux0017_2_1_G : LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      I0 => video_on_2065,
      I1 => Gout_mux0017_0_1322_28,
      I2 => N10,
      I3 => N16,
      O => N59
    );
  ball_pos_v1_cmp_ge0000111 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => ball_pos_h1(4),
      I1 => ball_pos_h1(3),
      I2 => ball_pos_v1_cmp_ge000014_1817,
      I3 => N60,
      O => ball_pos_v1_cmp_ge00002
    );
  v_sync_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Mcompar_video_on_cmp_le0001_cy_10_7_1000,
      I1 => v_sync_cmp_le0000,
      O => v_sync_or0000
    );
  h_sync_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Mcompar_video_on_cmp_le0000_cy(10),
      I1 => h_sync_cmp_le0000,
      O => h_sync_or0000
    );
  ball_speedy_and0000116 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_speedy_and000062_1866,
      I1 => ball_speedy_and0000103_1862,
      I2 => ball_speedy_and000090_1869,
      I3 => ball_speedy_and000069_1868,
      O => ball_speedy_and0000116_1863
    );
  ball_speedx_cmp_ge0001214_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ball_pos_h1(1),
      I1 => ball_pos_h1(2),
      I2 => ball_pos_h1(3),
      O => N62
    );
  ball_speedx_cmp_ge0001214 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => N72,
      I1 => ball_pos_h1(4),
      I2 => ball_pos_h1(5),
      I3 => N62,
      O => ball_speedx_cmp_ge0001
    );
  ball_speedx_cmp_gt0000217_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ball_pos_v1(4),
      I1 => ball_pos_v1(5),
      I2 => ball_speedx_cmp_gt000023_1843,
      O => N64
    );
  ball_speedx_cmp_gt0000217 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => ball_pos_v1(8),
      I1 => ball_pos_v1(6),
      I2 => ball_pos_v1(7),
      I3 => N64,
      O => ball_speedx_cmp_gt0000
    );
  Maccum_paddle_v1_lut_1_Q : LUT4
    generic map(
      INIT => X"9599"
    )
    port map (
      I0 => paddle_v1(1),
      I1 => SW0_IBUF_1734,
      I2 => paddle_v1(8),
      I3 => paddle_v1_cmp_lt00002,
      O => Maccum_paddle_v1_lut(1)
    );
  Maccum_paddle_v2_lut_1_Q : LUT4
    generic map(
      INIT => X"9599"
    )
    port map (
      I0 => paddle_v2(1),
      I1 => SW1_IBUF_1736,
      I2 => paddle_v2(8),
      I3 => paddle_v2_cmp_lt00002,
      O => Maccum_paddle_v2_lut(1)
    );
  ball_speedy_cmp_le0001_INV1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => add0001_add0000(8),
      I1 => add0001_add0000(7),
      I2 => add0001_add0000(6),
      I3 => N2,
      O => ball_speedy_cmp_le0001_INV
    );
  Maccum_paddle_v1_lut_8_Q : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => paddle_v1(8),
      I1 => SW0_IBUF_1734,
      I2 => paddle_v1_cmp_lt00002,
      O => Maccum_paddle_v1_lut(8)
    );
  Maccum_paddle_v2_lut_8_Q : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => paddle_v2(8),
      I1 => SW1_IBUF_1736,
      I2 => paddle_v2_cmp_lt00002,
      O => Maccum_paddle_v2_lut(8)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_7_Q : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => ball_pos_v1(7),
      I1 => Madd_add0003_addsub0000_cy_5_Q,
      I2 => paddle_v2(7),
      I3 => paddle_v2(6),
      O => Mcompar_ball_speedx_cmp_ge0003_lut(7)
    );
  Maccum_paddle_v1_lut_0_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v1(0),
      I1 => paddle_v1_cmp_lt00002,
      I2 => paddle_v1(8),
      I3 => SW0_IBUF_1734,
      O => Maccum_paddle_v1_lut(0)
    );
  Maccum_paddle_v2_lut_0_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v2(0),
      I1 => paddle_v2_cmp_lt00002,
      I2 => paddle_v2(8),
      I3 => SW1_IBUF_1736,
      O => Maccum_paddle_v2_lut(0)
    );
  Maccum_paddle_v1_lut_2_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v1(2),
      I1 => paddle_v1_cmp_lt00002,
      I2 => paddle_v1(8),
      I3 => SW0_IBUF_1734,
      O => Maccum_paddle_v1_lut(2)
    );
  Maccum_paddle_v2_lut_2_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v2(2),
      I1 => paddle_v2_cmp_lt00002,
      I2 => paddle_v2(8),
      I3 => SW1_IBUF_1736,
      O => Maccum_paddle_v2_lut(2)
    );
  Maccum_paddle_v1_lut_3_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v1(3),
      I1 => paddle_v1_cmp_lt00002,
      I2 => paddle_v1(8),
      I3 => SW0_IBUF_1734,
      O => Maccum_paddle_v1_lut(3)
    );
  Maccum_paddle_v2_lut_3_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v2(3),
      I1 => paddle_v2_cmp_lt00002,
      I2 => paddle_v2(8),
      I3 => SW1_IBUF_1736,
      O => Maccum_paddle_v2_lut(3)
    );
  Maccum_paddle_v1_lut_4_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v1(4),
      I1 => paddle_v1_cmp_lt00002,
      I2 => paddle_v1(8),
      I3 => SW0_IBUF_1734,
      O => Maccum_paddle_v1_lut(4)
    );
  Maccum_paddle_v2_lut_4_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v2(4),
      I1 => paddle_v2_cmp_lt00002,
      I2 => paddle_v2(8),
      I3 => SW1_IBUF_1736,
      O => Maccum_paddle_v2_lut(4)
    );
  Maccum_paddle_v1_lut_5_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v1(5),
      I1 => paddle_v1_cmp_lt00002,
      I2 => paddle_v1(8),
      I3 => SW0_IBUF_1734,
      O => Maccum_paddle_v1_lut(5)
    );
  Maccum_paddle_v2_lut_5_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v2(5),
      I1 => paddle_v2_cmp_lt00002,
      I2 => paddle_v2(8),
      I3 => SW1_IBUF_1736,
      O => Maccum_paddle_v2_lut(5)
    );
  Maccum_paddle_v1_lut_6_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v1(6),
      I1 => paddle_v1_cmp_lt00002,
      I2 => paddle_v1(8),
      I3 => SW0_IBUF_1734,
      O => Maccum_paddle_v1_lut(6)
    );
  Maccum_paddle_v2_lut_6_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v2(6),
      I1 => paddle_v2_cmp_lt00002,
      I2 => paddle_v2(8),
      I3 => SW1_IBUF_1736,
      O => Maccum_paddle_v2_lut(6)
    );
  Maccum_paddle_v1_lut_7_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v1(7),
      I1 => paddle_v1_cmp_lt00002,
      I2 => paddle_v1(8),
      I3 => SW0_IBUF_1734,
      O => Maccum_paddle_v1_lut(7)
    );
  Maccum_paddle_v2_lut_7_Q : LUT4
    generic map(
      INIT => X"59AA"
    )
    port map (
      I0 => paddle_v2(7),
      I1 => paddle_v2_cmp_lt00002,
      I2 => paddle_v2(8),
      I3 => SW1_IBUF_1736,
      O => Maccum_paddle_v2_lut(7)
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ball_pos_v1(3),
      I1 => paddle_v1(3),
      I2 => paddle_v1(2),
      O => Mcompar_ball_speedx_cmp_ge0002_lut(3)
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_4_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => ball_pos_v1(4),
      I1 => paddle_v1(2),
      I2 => paddle_v1(4),
      I3 => paddle_v1(3),
      O => Mcompar_ball_speedx_cmp_ge0002_lut(4)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_pos_v1(2),
      I1 => paddle_v2(2),
      O => Mcompar_ball_speedx_cmp_ge0003_lut(2)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ball_pos_v1(3),
      I1 => paddle_v2(3),
      I2 => paddle_v2(2),
      O => Mcompar_ball_speedx_cmp_ge0003_lut(3)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_4_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => ball_pos_v1(4),
      I1 => paddle_v2(2),
      I2 => paddle_v2(4),
      I3 => paddle_v2(3),
      O => Mcompar_ball_speedx_cmp_ge0003_lut(4)
    );
  ball_speedx_and00001145_SW0 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => ball_pos_h1(7),
      I1 => ball_pos_h1(8),
      I2 => ball_speedx_and00001112_1833,
      I3 => ball_pos_h1(9),
      O => N341
    );
  clk_half_BUFG : BUFG
    port map (
      I => clk_half1,
      O => clk_half_1874
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1873
    );
  Madd_add0000_add0000_lut_2_INV_0 : INV
    port map (
      I => ball_pos_h1(2),
      O => Madd_add0000_add0000_lut_2_Q
    );
  Madd_add0001_add0000_lut_2_INV_0 : INV
    port map (
      I => ball_pos_v1(2),
      O => Madd_add0001_add0000_lut(2)
    );
  Madd_ball_pos_v1_addsub0000_lut_1_INV_0 : INV
    port map (
      I => ball_pos_v1(1),
      O => Madd_ball_pos_v1_addsub0000_lut(1)
    );
  Mcompar_video_on_cmp_le0001_lut_0_INV_0 : INV
    port map (
      I => v_pos(5),
      O => Mcompar_video_on_cmp_le0001_lut(0)
    );
  Mcompar_video_on_cmp_le0001_lut_2_2_INV_0 : INV
    port map (
      I => v_pos(3),
      O => Mcompar_video_on_cmp_le0001_lut_2_2
    );
  Mcompar_video_on_cmp_le0001_lut_0_3_INV_0 : INV
    port map (
      I => v_pos(0),
      O => Mcompar_video_on_cmp_le0001_lut_0_3
    );
  Mcompar_video_on_cmp_le0001_lut_2_3_INV_0 : INV
    port map (
      I => v_pos(3),
      O => Mcompar_video_on_cmp_le0001_lut_2_3
    );
  Mcompar_video_on_cmp_le0001_lut_4_3_INV_0 : INV
    port map (
      I => v_pos(5),
      O => Mcompar_video_on_cmp_le0001_lut_4_3
    );
  Mcompar_video_on_cmp_le0001_lut_0_5_INV_0 : INV
    port map (
      I => v_pos(4),
      O => Mcompar_video_on_cmp_le0001_lut_0_5
    );
  Mcompar_video_on_cmp_le0001_lut_2_5_INV_0 : INV
    port map (
      I => v_pos(6),
      O => Mcompar_video_on_cmp_le0001_lut_2_5
    );
  Mcompar_video_on_cmp_le0001_lut_0_7_INV_0 : INV
    port map (
      I => v_pos(0),
      O => Mcompar_video_on_cmp_le0001_lut_0_7
    );
  Mcompar_video_on_cmp_le0001_lut_2_7_INV_0 : INV
    port map (
      I => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_lut_2_7
    );
  Mcompar_video_on_cmp_le0001_lut_0_9_INV_0 : INV
    port map (
      I => v_pos(1),
      O => Mcompar_video_on_cmp_le0001_lut_0_9
    );
  Mcompar_video_on_cmp_le0001_lut_4_8_INV_0 : INV
    port map (
      I => v_pos(7),
      O => Mcompar_video_on_cmp_le0001_lut_4_8
    );
  Mcompar_video_on_cmp_le0001_lut_0_10_INV_0 : INV
    port map (
      I => v_pos(2),
      O => Mcompar_video_on_cmp_le0001_lut_0_10
    );
  Mcompar_video_on_cmp_le0001_lut_2_10_INV_0 : INV
    port map (
      I => v_pos(4),
      O => Mcompar_video_on_cmp_le0001_lut_2_10
    );
  Mcompar_video_on_cmp_le0001_lut_2_11_INV_0 : INV
    port map (
      I => v_pos(4),
      O => Mcompar_video_on_cmp_le0001_lut_2_11
    );
  Madd_ball_pos_h1_addsub0000_lut_1_INV_0 : INV
    port map (
      I => ball_pos_h1(1),
      O => Madd_ball_pos_h1_addsub0000_lut(1)
    );
  Mcompar_video_on_cmp_le0000_lut_7_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut(7)
    );
  Mcompar_video_on_cmp_le0000_lut_2_1_INV_0 : INV
    port map (
      I => h_pos(8),
      O => Mcompar_video_on_cmp_le0000_lut_2_1
    );
  Mcompar_video_on_cmp_le0000_lut_9_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut(9)
    );
  Mcompar_video_on_cmp_le0000_lut_0_2_INV_0 : INV
    port map (
      I => h_pos(4),
      O => Mcompar_video_on_cmp_le0000_lut_0_2
    );
  Mcompar_video_on_cmp_le0000_lut_2_2_INV_0 : INV
    port map (
      I => h_pos(8),
      O => Mcompar_video_on_cmp_le0000_lut_2_2
    );
  Mcompar_video_on_cmp_le0000_lut_9_1_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut_9_1
    );
  Mcompar_video_on_cmp_le0000_lut_2_3_INV_0 : INV
    port map (
      I => h_pos(3),
      O => Mcompar_video_on_cmp_le0000_lut_2_3
    );
  Mcompar_video_on_cmp_le0000_lut_0_4_INV_0 : INV
    port map (
      I => h_pos(0),
      O => Mcompar_video_on_cmp_le0000_lut_0_4
    );
  Mcompar_video_on_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut_11_1
    );
  Mcompar_video_on_cmp_le0000_lut_2_5_INV_0 : INV
    port map (
      I => h_pos(4),
      O => Mcompar_video_on_cmp_le0000_lut_2_5
    );
  Mcompar_video_on_cmp_le0000_lut_11_2_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut_11_2
    );
  Mcompar_video_on_cmp_le0000_lut_0_6_INV_0 : INV
    port map (
      I => h_pos(2),
      O => Mcompar_video_on_cmp_le0000_lut_0_6
    );
  Mcompar_video_on_cmp_le0000_lut_0_7_INV_0 : INV
    port map (
      I => h_pos(0),
      O => Mcompar_video_on_cmp_le0000_lut_0_7
    );
  Mcompar_video_on_cmp_le0000_lut_10_6_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut_10_6
    );
  Mcompar_video_on_cmp_le0000_lut_0_8_INV_0 : INV
    port map (
      I => h_pos(0),
      O => Mcompar_video_on_cmp_le0000_lut_0_8
    );
  Mcompar_video_on_cmp_le0000_lut_11_4_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_video_on_cmp_le0000_lut_11_4
    );
  Mcompar_Rout_cmp_ge0001_lut_1_INV_0 : INV
    port map (
      I => v_pos(2),
      O => Mcompar_Rout_cmp_ge0001_lut(1)
    );
  Mcompar_Rout_cmp_ge0001_lut_1_1_INV_0 : INV
    port map (
      I => v_pos(4),
      O => Mcompar_Rout_cmp_ge0001_lut_1_1
    );
  Mcompar_Rout_cmp_ge0001_lut_1_3_INV_0 : INV
    port map (
      I => v_pos(2),
      O => Mcompar_Rout_cmp_ge0001_lut_1_3
    );
  Mcompar_Rout_cmp_ge0001_lut_1_4_INV_0 : INV
    port map (
      I => v_pos(3),
      O => Mcompar_Rout_cmp_ge0001_lut_1_4
    );
  Mcompar_Rout_cmp_ge0001_lut_1_6_INV_0 : INV
    port map (
      I => v_pos(3),
      O => Mcompar_Rout_cmp_ge0001_lut_1_6
    );
  Mcompar_Rout_cmp_ge0001_lut_3_6_INV_0 : INV
    port map (
      I => v_pos(7),
      O => Mcompar_Rout_cmp_ge0001_lut_3_6
    );
  Mcompar_Rout_cmp_ge0001_lut_1_7_INV_0 : INV
    port map (
      I => v_pos(1),
      O => Mcompar_Rout_cmp_ge0001_lut_1_7
    );
  Mcompar_Rout_cmp_ge0001_lut_3_7_INV_0 : INV
    port map (
      I => v_pos(6),
      O => Mcompar_Rout_cmp_ge0001_lut_3_7
    );
  Mcompar_Rout_cmp_ge0000_lut_1_INV_0 : INV
    port map (
      I => h_pos(2),
      O => Mcompar_Rout_cmp_ge0000_lut(1)
    );
  Mcompar_Rout_cmp_ge0000_lut_1_1_INV_0 : INV
    port map (
      I => h_pos(3),
      O => Mcompar_Rout_cmp_ge0000_lut_1_1
    );
  Mcompar_Rout_cmp_ge0000_lut_10_2_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_Rout_cmp_ge0000_lut_10_2
    );
  Mcompar_Rout_cmp_ge0000_lut_1_3_INV_0 : INV
    port map (
      I => h_pos(1),
      O => Mcompar_Rout_cmp_ge0000_lut_1_3
    );
  Mcompar_Rout_cmp_ge0000_lut_5_3_INV_0 : INV
    port map (
      I => h_pos(7),
      O => Mcompar_Rout_cmp_ge0000_lut_5_3
    );
  Mcompar_Rout_cmp_ge0000_lut_1_4_INV_0 : INV
    port map (
      I => h_pos(4),
      O => Mcompar_Rout_cmp_ge0000_lut_1_4
    );
  Mcompar_Rout_cmp_ge0000_lut_9_4_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_Rout_cmp_ge0000_lut_9_4
    );
  Mcompar_Rout_cmp_ge0000_lut_10_5_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_Rout_cmp_ge0000_lut_10_5
    );
  Mcompar_Rout_cmp_ge0006_lut_15_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_Rout_cmp_ge0006_lut(15)
    );
  Mcount_v_pos_lut_0_INV_0 : INV
    port map (
      I => v_pos(0),
      O => Mcount_v_pos_lut(0)
    );
  Mcount_h_pos_lut_0_INV_0 : INV
    port map (
      I => h_pos(0),
      O => Mcount_h_pos_lut(0)
    );
  Mcount_increment_lut_0_INV_0 : INV
    port map (
      I => increment(0),
      O => Mcount_increment_lut(0)
    );
  Mcompar_Rout_cmp_le0006_lut_15_INV_0 : INV
    port map (
      I => h_pos(30),
      O => Mcompar_Rout_cmp_le0006_lut(15)
    );
  Mcompar_Rout_cmp_le0009_lut_15_INV_0 : INV
    port map (
      I => v_pos(30),
      O => Mcompar_Rout_cmp_le0009_lut(15)
    );
  Mcompar_Rout_cmp_le0011_lut_15_INV_0 : INV
    port map (
      I => v_pos(30),
      O => Mcompar_Rout_cmp_le0011_lut(15)
    );
  rst_inv1_INV_0 : INV
    port map (
      I => rst_IBUF_2011,
      O => rst_inv
    );
  Madd_add0003_addsub0000_xor_2_11_INV_0 : INV
    port map (
      I => paddle_v2(2),
      O => add0003_addsub0000(2)
    );
  Madd_add0002_addsub0000_xor_2_11_INV_0 : INV
    port map (
      I => paddle_v1(2),
      O => add0002_addsub0000(2)
    );
  Mcompar_ball_speedx_cmp_ge0002_lut_0_1_INV_0 : INV
    port map (
      I => paddle_v1(0),
      O => Mcompar_ball_speedx_cmp_ge0002_lut(0)
    );
  Mcompar_ball_speedx_cmp_ge0003_lut_0_1_INV_0 : INV
    port map (
      I => paddle_v2(0),
      O => Mcompar_ball_speedx_cmp_ge0003_lut(0)
    );
  Mcompar_Rout_cmp_ge0000_lut_10_6_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_Rout_cmp_ge0000_lut(10)
    );
  Mcompar_Rout_cmp_ge0000_lut_10_11_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_Rout_cmp_ge0000_lut_10_1
    );
  Mcompar_Rout_cmp_ge0000_lut_10_41_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_Rout_cmp_ge0000_lut_10_4
    );
  Mcompar_Rout_cmp_ge0000_lut_11_3_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_Rout_cmp_ge0000_lut(11)
    );
  Mcompar_Rout_cmp_ge0000_lut_11_21_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_Rout_cmp_ge0000_lut_11_2
    );
  Mcompar_Rout_cmp_ge0000_lut_13_1_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_Rout_cmp_ge0000_lut(13)
    );
  Mcompar_Rout_cmp_ge0001_lut_10_6_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0001_lut(10)
    );
  Mcompar_Rout_cmp_ge0001_lut_11_5_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0001_lut(11)
    );
  Mcompar_Rout_cmp_ge0001_lut_11_11_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0001_lut_11_1
    );
  Mcompar_Rout_cmp_ge0001_lut_11_21_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0001_lut_11_2
    );
  Mcompar_Rout_cmp_ge0001_lut_11_31_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0001_lut_11_3
    );
  Mcompar_Rout_cmp_ge0001_lut_11_41_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0001_lut_11_4
    );
  Mcompar_Rout_cmp_ge0001_lut_9_21_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0001_lut_9_2
    );
  Mcompar_Rout_cmp_ge0001_lut_9_51_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0001_lut_9_5
    );
  Mcompar_Rout_cmp_ge0006_lut_16_1_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_Rout_cmp_ge0006_lut(16)
    );
  Mcompar_Rout_cmp_ge0007_lut_0_1_INV_0 : INV
    port map (
      I => v_pos(0),
      O => Mcompar_Rout_cmp_ge0007_lut(0)
    );
  Mcompar_Rout_cmp_ge0007_lut_15_1_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0007_lut(15)
    );
  Mcompar_Rout_cmp_ge0009_lut_15_1_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0009_lut(15)
    );
  Mcompar_Rout_cmp_ge0011_lut_15_1_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_ge0011_lut(15)
    );
  Mcompar_Rout_cmp_le0006_lut_0_1_INV_0 : INV
    port map (
      I => h_pos(0),
      O => Mcompar_Rout_cmp_le0006_lut(0)
    );
  Mcompar_Rout_cmp_le0006_lut_16_1_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_Rout_cmp_le0006_lut(16)
    );
  Mcompar_Rout_cmp_le0007_lut_15_1_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_le0007_lut(15)
    );
  Mcompar_Rout_cmp_le0009_lut_16_1_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_le0009_lut(16)
    );
  Mcompar_Rout_cmp_le0011_lut_16_1_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_Rout_cmp_le0011_lut(16)
    );
  Mcompar_video_on_cmp_le0000_lut_10_8_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut(10)
    );
  Mcompar_video_on_cmp_le0000_lut_10_11_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut_10_1
    );
  Mcompar_video_on_cmp_le0000_lut_10_51_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut_10_5
    );
  Mcompar_video_on_cmp_le0000_lut_11_5_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut(11)
    );
  Mcompar_video_on_cmp_le0000_lut_11_31_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut_11_3
    );
  Mcompar_video_on_cmp_le0000_lut_12_3_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut(12)
    );
  Mcompar_video_on_cmp_le0000_lut_12_11_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut_12_1
    );
  Mcompar_video_on_cmp_le0000_lut_12_21_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut_12_2
    );
  Mcompar_video_on_cmp_le0000_lut_8_9_INV_0 : INV
    port map (
      I => h_pos(31),
      O => Mcompar_video_on_cmp_le0000_lut(8)
    );
  Mcompar_video_on_cmp_le0001_lut_10_10_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut(10)
    );
  Mcompar_video_on_cmp_le0001_lut_10_31_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut_10_3
    );
  Mcompar_video_on_cmp_le0001_lut_10_41_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut_10_4
    );
  Mcompar_video_on_cmp_le0001_lut_10_61_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut_10_6
    );
  Mcompar_video_on_cmp_le0001_lut_10_81_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut_10_8
    );
  Mcompar_video_on_cmp_le0001_lut_10_91_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut_10_9
    );
  Mcompar_video_on_cmp_le0001_lut_11_4_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut(11)
    );
  Mcompar_video_on_cmp_le0001_lut_11_21_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut_11_2
    );
  Mcompar_video_on_cmp_le0001_lut_12_2_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut(12)
    );
  Mcompar_video_on_cmp_le0001_lut_12_11_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut_12_1
    );
  Mcompar_video_on_cmp_le0001_lut_8_12_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut(8)
    );
  Mcompar_video_on_cmp_le0001_lut_9_31_INV_0 : INV
    port map (
      I => v_pos(31),
      O => Mcompar_video_on_cmp_le0001_lut_9_3
    );
  paddle_v2_and000049 : MUXF5
    port map (
      I0 => N66,
      I1 => N67,
      S => SW1_IBUF_1736,
      O => paddle_v2_and0000
    );
  paddle_v2_and000049_F : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => paddle_v2_and000023_2005,
      I1 => increment_cmp_eq0000,
      I2 => rst_IBUF_2011,
      O => N66
    );
  paddle_v2_and000049_G : LUT4
    generic map(
      INIT => X"4044"
    )
    port map (
      I0 => rst_IBUF_2011,
      I1 => increment_cmp_eq0000,
      I2 => paddle_v2(8),
      I3 => paddle_v2_cmp_lt00002,
      O => N67
    );
  paddle_v1_and000049 : MUXF5
    port map (
      I0 => N68,
      I1 => N69,
      S => SW0_IBUF_1734,
      O => paddle_v1_and0000
    );
  paddle_v1_and000049_F : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => paddle_v1_and000023_1989,
      I1 => increment_cmp_eq0000,
      I2 => rst_IBUF_2011,
      O => N68
    );
  paddle_v1_and000049_G : LUT4
    generic map(
      INIT => X"4044"
    )
    port map (
      I0 => rst_IBUF_2011,
      I1 => increment_cmp_eq0000,
      I2 => paddle_v1(8),
      I3 => paddle_v1_cmp_lt00002,
      O => N69
    );
  ball_speedx_mux0000_0_122 : MUXF5
    port map (
      I0 => N70,
      I1 => N71,
      S => N64,
      O => N1
    );
  ball_speedx_mux0000_0_122_F : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => ball_pos_v1(8),
      I1 => ball_speedx_mux0000_0_16_1856,
      I2 => ball_pos_v1(6),
      I3 => ball_pos_v1(7),
      O => N70
    );
  ball_speedx_mux0000_0_122_G : LUT4
    generic map(
      INIT => X"BFBD"
    )
    port map (
      I0 => ball_pos_v1(8),
      I1 => ball_pos_v1(6),
      I2 => ball_pos_v1(7),
      I3 => ball_speedx_mux0000_0_16_1856,
      O => N71
    );
  ball_speedx_cmp_gt00012_SW0 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ball_pos_h1(6),
      I1 => ball_pos_h1(7),
      I2 => ball_pos_h1(8),
      I3 => ball_pos_h1(9),
      LO => N72,
      O => ball_speedx_cmp_ge000124
    );
  ball_speedx_cmp_gt00012 : LUT4_D
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => ball_speedx_cmp_ge000124,
      I1 => ball_pos_h1(5),
      I2 => ball_pos_h1(3),
      I3 => ball_pos_h1(4),
      LO => N73,
      O => ball_speedx_cmp_gt0001
    );
  ball_speedy_cmp_le00011_SW0 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => add0001_add0000(5),
      I1 => add0001_add0000(4),
      I2 => add0001_add0000(3),
      LO => N74,
      O => N2
    );
  ball_speedx_cmp_gt000023 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ball_pos_v1(3),
      I1 => ball_pos_v1(1),
      I2 => ball_pos_v1(2),
      LO => ball_speedx_cmp_gt000023_1843
    );
  paddle_v2_cmp_lt0000136 : LUT3_D
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => paddle_v2_cmp_lt0000133_2007,
      I1 => paddle_v2(4),
      I2 => paddle_v2_cmp_lt0000115_2006,
      LO => N75,
      O => paddle_v2_cmp_lt00002
    );
  paddle_v1_cmp_lt0000136 : LUT3_D
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => paddle_v1_cmp_lt0000133_1991,
      I1 => paddle_v1(4),
      I2 => paddle_v1_cmp_lt0000115_1990,
      LO => N76,
      O => paddle_v1_cmp_lt00002
    );
  ball_speedx_and000021 : LUT4_D
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => ball_pos_h1(9),
      I1 => ball_pos_v1_cmp_ge00002,
      I2 => N14,
      I3 => ball_pos_v1_cmp_le0001,
      LO => N77,
      O => N311
    );
  ball_pos_v1_and000018 : LUT3_L
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => add0001_add0000(6),
      I1 => add0001_add0000(7),
      I2 => add0001_add0000(8),
      LO => ball_pos_v1_and000018_1816
    );
  ball_pos_v1_and0000151 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ball_pos_v1(8),
      I1 => ball_pos_v1(5),
      I2 => ball_pos_v1(6),
      I3 => ball_pos_v1(7),
      LO => ball_pos_v1_and0000151_1813
    );
  ball_speedy_and00003 : LUT2_D
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => add0000_add0000(5),
      I1 => add0000_add0000(6),
      LO => N78,
      O => ball_speedx_cmp_le000123
    );
  ball_speedy_and000032 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => add0000_add0000(7),
      I1 => add0000_add0000(8),
      LO => N79,
      O => ball_pos_v1_cmp_le0001232
    );
  ball_speedx_cmp_le00052_SW0 : LUT3_L
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => add0000_add0000(4),
      I1 => add0000_add0000(5),
      I2 => add0000_add0000(6),
      LO => N4
    );
  ball_speedx_cmp_le000323 : LUT2_L
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => add0000_add0000(1),
      I1 => add0000_add0000(2),
      LO => ball_speedx_cmp_le000323_1851
    );
  ball_speedx_cmp_le0003251 : LUT4_D
    generic map(
      INIT => X"CF4F"
    )
    port map (
      I0 => add0000_add0000(6),
      I1 => ball_pos_v1_cmp_le0001232,
      I2 => add0000_add0000(9),
      I3 => ball_speedx_cmp_le0003217_1850,
      LO => N80,
      O => ball_speedx_cmp_le0003
    );
  ball_speedx_mux0000_0_58 : LUT4_L
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => ball_speedx_cmp_ge0003,
      I1 => ball_speedx_cmp_le0004,
      I2 => ball_speedx_cmp_le0005,
      I3 => ball_speedx_cmp_le0003,
      LO => ball_speedx_mux0000_0_58_1859
    );
  Gout_mux0017_0_130 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => add0001_add0000(6),
      I1 => add0001_add0000(7),
      LO => Gout_mux0017_0_130_27
    );
  Rout_and00131 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Rout_cmp_ge0008,
      I1 => Rout_cmp_le0008,
      I2 => Rout_cmp_ge0009,
      I3 => Rout_cmp_le0009,
      LO => N81,
      O => Rout_and0013
    );
  Madd_add0003_addsub0000_cy_5_11 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => paddle_v2(5),
      I1 => paddle_v2(4),
      I2 => paddle_v2(3),
      I3 => paddle_v2(2),
      LO => N82,
      O => Madd_add0003_addsub0000_cy_5_Q
    );
  Madd_add0002_addsub0000_cy_5_11 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => paddle_v1(5),
      I1 => paddle_v1(4),
      I2 => paddle_v1(3),
      I3 => paddle_v1(2),
      LO => N83,
      O => Madd_add0002_addsub0000_cy_5_Q
    );
  ball_pos_v1_cmp_le0001248 : LUT4_D
    generic map(
      INIT => X"2FAF"
    )
    port map (
      I0 => ball_pos_v1_cmp_le0001232,
      I1 => add0000_add0000(6),
      I2 => add0000_add0000(9),
      I3 => N28,
      LO => N84,
      O => ball_pos_v1_cmp_le0001
    );
  Rout_mux0016_0_SW0 : LUT3_L
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => N13,
      I1 => Rout_and0014,
      I2 => Rout_and0013,
      LO => N30
    );
  Gout_mux0017_0_1164_SW0 : LUT4_L
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => Rout_cmp_ge0000,
      I1 => Rout_cmp_le0000,
      I2 => Gout_mux0017_0_114_24,
      I3 => N321,
      LO => N131
    );
  ball_speedx_and00000 : LUT4_L
    generic map(
      INIT => X"80F0"
    )
    port map (
      I0 => ball_speedx_and0000118_1835,
      I1 => N341,
      I2 => N1,
      I3 => ball_speedx_cmp_le0001,
      LO => ball_speedx_and00000_1832
    );
  Bout_mux0016_0_2124_SW0 : LUT4_L
    generic map(
      INIT => X"FCA8"
    )
    port map (
      I0 => Mcompar_video_on_cmp_le0001_cy_9_3_1119,
      I1 => Mcompar_video_on_cmp_le0001_cy_10_5_998,
      I2 => Mcompar_Rout_cmp_ge0001_cy_11_3_294,
      I3 => Mcompar_Rout_cmp_ge0001_cy(11),
      LO => N39
    );
  ball_pos_v1_cmp_le0001212_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => add0000_add0000(1),
      I1 => add0000_add0000(2),
      LO => N41
    );
  Gout_mux0017_0_2_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"FF8F"
    )
    port map (
      I0 => N21,
      I1 => Rout_cmp_le0009,
      I2 => N13,
      I3 => Rout_and0014,
      LO => N48
    );
  Bout_mux0016_0_2150_SW0 : LUT4_L
    generic map(
      INIT => X"FCA8"
    )
    port map (
      I0 => Mcompar_Rout_cmp_ge0001_cy_11_2_293,
      I1 => Rout_cmp_ge0004,
      I2 => Mcompar_video_on_cmp_le0001_cy_11_1_1002,
      I3 => Mcompar_video_on_cmp_le0001_cy(12),
      LO => N46
    );
  Bout_mux0016_0_SW1 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => N13,
      I1 => Rout_and0014,
      I2 => Rout_and0013,
      LO => N52
    );
  ball_speedx_mux0000_0_3_SW0_SW0 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => ball_speedx_cmp_ge0001,
      I1 => ball_speedx_cmp_ge0002,
      LO => N56
    );
  ball_pos_v1_cmp_ge0000111_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ball_pos_h1(5),
      I1 => ball_pos_h1(6),
      I2 => ball_pos_h1(7),
      I3 => ball_pos_h1(8),
      LO => N60
    );

end Structure;

