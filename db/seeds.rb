require_relative "./_seeds_users"
require_relative "./_seeds_labels"
require_relative "./_seeds_categories"

require_relative "./_seeds_groups"
require_relative "./_seeds_memberships"
require_relative "./_seeds_messages"
require_relative "./_seeds_activities"
require_relative "./_seeds_events"
require_relative "./_seeds_categorizations"
require_relative "./_seeds_labelings"

# Cleaning seeds -------------------------
puts "Cleaning database..."

Label.destroy_all
Category.destroy_all
Labeling.all.destroy_all
Categorization.destroy_all
Event.destroy_all
Activity.destroy_all
Membership.destroy_all
Group.destroy_all
Friendship.destroy_all
User.destroy_all

# Seeds without dependency -------------------------
SEED_USERS.seed
SEED_LABELS.seed
SEED_CATEGORIES.seed

# Seeds with dependencies -------------------------
SEED_ACTIVITIES.seed      # dependent ON : SEED_USERS
SEED_EVENTS.seed          # dependent ON : SEED_ACTIVITIES
SEED_GROUPS.seed          # dependent ON : SEED_USERS, SEED_ACTIVITIES
SEED_MEMBERSHIPS.seed     # dependent ON : SEED_USERS, SEED_GROUPS
SEED_MESSAGES.seed     # dependent ON : SEED_USERS, SEED_GROUPS, SEED_MEMBERSHIP
SEED_CATEGORIZATIONS.seed # dependent ON : SEED_ACTIVITIES, SEED_CATEGORIES
SEED_LABELINGS.seed       # dependent ON : SEED_ACTIVITIES, SEED_LABELINGS
