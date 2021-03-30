require_relative "./_seeds_users"
require_relative "./_seeds_activities"
require_relative "./_seeds_events"
require_relative "./_seeds_labels"
require_relative "./_seeds_categories"
require_relative "./_seeds_groups"
require_relative "./_seeds_memberships"

# Seeds without dependency -------------------------
SEED_USERS.seed
SEED_LABELS.seed
SEED_CATEGORIES.seed

# Seeds with dependencies -------------------------
SEED_GROUPS.seed # dependent ON : user
SEED_MEMBERSHIPS.seed # dependent ON : group + user
SEED_ACTIVITIES.seed # dependent ON : user
SEED_EVENTS.seed # dependent ON : activity
