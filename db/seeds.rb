require_relative "./_seeds_users"
require_relative "./_seeds_labels"
require_relative "./_seeds_categories"

require_relative "./_seeds_groups"
require_relative "./_seeds_memberships"
require_relative "./_seeds_activities"
require_relative "./_seeds_events"

# Seeds without dependency -------------------------
SEED_USERS.seed
SEED_LABELS.seed
SEED_CATEGORIES.seed

# Seeds with dependencies -------------------------
SEED_ACTIVITIES.seed    # dependent ON : SEED_USERS
SEED_EVENTS.seed        # dependent ON : SEED_ACTIVITIES
SEED_GROUPS.seed        # dependent ON : SEED_USERS, SEED_ACTIVITIES
SEED_MEMBERSHIPS.seed   # dependent ON : SEED_USERS, SEED_GROUPS
