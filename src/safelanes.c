/*
 * See Licensing and Copyright notice in naev.h
 */

/**
 * @file safelanes.c
 *
 * @brief Handles factions' safe lanes through systems.
 */

/** @cond */
#include "naev.h"
/** @endcond */

#include "safelanes.h"


/**
 * @brief Initializes the safelanes system.
 */
void safelanes_init (void)
{
}


/**
 * @brief Shuts down the safelanes system.
 */
void safelanes_destroy (void)
{
}


/**
 * @brief Shuts down the safelanes system.
 *    @param faction ID of the faction whose lanes we want, or a negative value signifying "all of them".
 *    @param system Star system whose lanes we want.
 *    @return Array (array.h) of matching SafeLane structures. Caller frees.
 */
SafeLane* safelanes_get (int faction, const StarSystem* system)
{
   (void)faction;
   (void)system;
   return NULL;
}


/**
 * @brief Update the safe lane locations in response to the universe changing (e.g., diff applied).
 */
void safelanes_recalculate (void)
{
}
