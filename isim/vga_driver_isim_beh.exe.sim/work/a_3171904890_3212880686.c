/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/student1/m7jo/coe758/simplegame/SimpleVideoGame/vga_driver.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3171904890_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6712);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t3 = (t0 + 6888);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6952);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}

static void work_a_3171904890_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    int t12;
    int t13;
    int t14;
    char *t15;
    int t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6728);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 7016);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t2 = (t0 + 3088U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t2 = (t0 + 3208U);
    t7 = *((char **)t2);
    t11 = *((int *)t7);
    t12 = (t10 + t11);
    t2 = (t0 + 3328U);
    t8 = *((char **)t2);
    t13 = *((int *)t8);
    t14 = (t12 + t13);
    t2 = (t0 + 3448U);
    t15 = *((char **)t2);
    t16 = *((int *)t15);
    t17 = (t14 + t16);
    t4 = (t9 == t17);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (t9 + 1);
    t1 = (t0 + 7016);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7016);
    t18 = (t2 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((int *)t21) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

}

static void work_a_3171904890_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    int t12;
    int t13;
    int t14;
    char *t15;
    int t16;
    int t17;
    char *t18;
    int t19;
    char *t20;
    int t21;
    char *t22;
    int t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    char *t28;
    int t29;
    int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6744);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 7080);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t2 = (t0 + 3088U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t2 = (t0 + 3208U);
    t7 = *((char **)t2);
    t11 = *((int *)t7);
    t12 = (t10 + t11);
    t2 = (t0 + 3328U);
    t8 = *((char **)t2);
    t13 = *((int *)t8);
    t14 = (t12 + t13);
    t2 = (t0 + 3448U);
    t15 = *((char **)t2);
    t16 = *((int *)t15);
    t17 = (t14 + t16);
    t4 = (t9 == t17);
    if (t4 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2632U);
    t18 = *((char **)t2);
    t19 = *((int *)t18);
    t2 = (t0 + 3568U);
    t20 = *((char **)t2);
    t21 = *((int *)t20);
    t2 = (t0 + 3688U);
    t22 = *((char **)t2);
    t23 = *((int *)t22);
    t24 = (t21 + t23);
    t2 = (t0 + 3808U);
    t25 = *((char **)t2);
    t26 = *((int *)t25);
    t27 = (t24 + t26);
    t2 = (t0 + 3928U);
    t28 = *((char **)t2);
    t29 = *((int *)t28);
    t30 = (t27 + t29);
    t31 = (t19 == t30);
    if (t31 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (t9 + 1);
    t1 = (t0 + 7080);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 7080);
    t32 = (t2 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    *((int *)t35) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

}

static void work_a_3171904890_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    int t12;
    unsigned char t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    int t19;
    char *t20;
    int t21;
    int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6760);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 7144);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t2 = (t0 + 3088U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t2 = (t0 + 3208U);
    t7 = *((char **)t2);
    t11 = *((int *)t7);
    t12 = (t10 + t11);
    t13 = (t9 <= t12);
    if (t13 == 1)
        goto LAB10;

LAB11:    t2 = (t0 + 2472U);
    t8 = *((char **)t2);
    t14 = *((int *)t8);
    t2 = (t0 + 3088U);
    t15 = *((char **)t2);
    t16 = *((int *)t15);
    t2 = (t0 + 3208U);
    t17 = *((char **)t2);
    t18 = *((int *)t17);
    t19 = (t16 + t18);
    t2 = (t0 + 3328U);
    t20 = *((char **)t2);
    t21 = *((int *)t20);
    t22 = (t19 + t21);
    t23 = (t14 > t22);
    t4 = t23;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 7144);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 7144);
    t24 = (t2 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB10:    t4 = (unsigned char)1;
    goto LAB12;

}

static void work_a_3171904890_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    int t12;
    unsigned char t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    int t19;
    char *t20;
    int t21;
    int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6776);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 7208);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2632U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t2 = (t0 + 3568U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t2 = (t0 + 3688U);
    t7 = *((char **)t2);
    t11 = *((int *)t7);
    t12 = (t10 + t11);
    t13 = (t9 <= t12);
    if (t13 == 1)
        goto LAB10;

LAB11:    t2 = (t0 + 2632U);
    t8 = *((char **)t2);
    t14 = *((int *)t8);
    t2 = (t0 + 3568U);
    t15 = *((char **)t2);
    t16 = *((int *)t15);
    t2 = (t0 + 3688U);
    t17 = *((char **)t2);
    t18 = *((int *)t17);
    t19 = (t16 + t18);
    t2 = (t0 + 3808U);
    t20 = *((char **)t2);
    t21 = *((int *)t20);
    t22 = (t19 + t21);
    t23 = (t14 > t22);
    t4 = t23;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 7208);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 7208);
    t24 = (t2 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB10:    t4 = (unsigned char)1;
    goto LAB12;

}

static void work_a_3171904890_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned char t11;
    int t12;
    int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 7272);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t2 = (t0 + 3088U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t9 <= t10);
    if (t11 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 7272);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 7272);
    t15 = (t2 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB10:    t2 = (t0 + 2632U);
    t7 = *((char **)t2);
    t12 = *((int *)t7);
    t2 = (t0 + 3568U);
    t8 = *((char **)t2);
    t13 = *((int *)t8);
    t14 = (t12 <= t13);
    t4 = t14;
    goto LAB12;

}

static void work_a_3171904890_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    unsigned char t14;
    int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6808);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 11229);
    t6 = (t0 + 7336);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 11237);
    t5 = (t0 + 7400);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 11245);
    t5 = (t0 + 7464);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2792U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 11301);
    t5 = (t0 + 7336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 11309);
    t5 = (t0 + 7400);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 11317);
    t5 = (t0 + 7464);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t13 = *((int *)t6);
    t14 = (t13 >= 10);
    if (t14 == 1)
        goto LAB13;

LAB14:    t12 = (unsigned char)0;

LAB15:    if (t12 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 11277);
    t5 = (t0 + 7336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 11285);
    t5 = (t0 + 7400);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 11293);
    t5 = (t0 + 7464);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 11253);
    t9 = (t0 + 7336);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 11261);
    t5 = (t0 + 7400);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 11269);
    t5 = (t0 + 7464);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB11;

LAB13:    t2 = (t0 + 2472U);
    t7 = *((char **)t2);
    t15 = *((int *)t7);
    t16 = (t15 <= 60);
    t12 = t16;
    goto LAB15;

}


extern void work_a_3171904890_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3171904890_3212880686_p_0,(void *)work_a_3171904890_3212880686_p_1,(void *)work_a_3171904890_3212880686_p_2,(void *)work_a_3171904890_3212880686_p_3,(void *)work_a_3171904890_3212880686_p_4,(void *)work_a_3171904890_3212880686_p_5,(void *)work_a_3171904890_3212880686_p_6};
	xsi_register_didat("work_a_3171904890_3212880686", "isim/vga_driver_isim_beh.exe.sim/work/a_3171904890_3212880686.didat");
	xsi_register_executes(pe);
}
