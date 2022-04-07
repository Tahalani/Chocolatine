/*
** EPITECH PROJECT, 2022
** taha_choco
** File description:
** test_unit
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>

int test_unitaire(void);

Test(test_unitaire, return_zero)
{
    cr_assert_eq(test_unitaire(), 0);
}
