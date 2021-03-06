#pragma once

#include "TestObject.h"

class ConditionVariableBuiltin;
class Engine;
class EquipmentDb;
class Hunter;
class Race;
class RaidControl;
class Rogue;
class SimSettings;
class Warrior;

class TestConditionVariableBuiltin : TestObject {
public:
    TestConditionVariableBuiltin(EquipmentDb* equipment_db);
    void test_all() override;

private:
    void test_values_after_initialization() override;

    void test_combo_points_less();
    void test_combo_points_leq();
    void test_combo_points_equal();
    void test_combo_points_geq();
    void test_combo_points_greater();

    void test_auto_shot_timer_less();
    void test_auto_shot_timer_greater();

    void test_swing_timer_less();
    void test_swing_timer_greater();

    Hunter* hunter {nullptr};
    Rogue* rogue {nullptr};
    Warrior* warrior {nullptr};
    Race* race {nullptr};
    SimSettings* sim_settings {nullptr};
    RaidControl* raid_control {nullptr};

    void set_up_rogue();
    void set_up_hunter();
    void set_up_warrior();

    void tear_down();

    void set_event_priority(Engine* engine, const double priority);
};
