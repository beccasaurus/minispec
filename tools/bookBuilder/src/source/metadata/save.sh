echo > "$FULL_SOURCE_METADATA_FILE" # Start fresh metadata file

local variable
for variable in PART_TITLES      CHAPTER_TITLES      SECTION_TITLES       SUB_SECTION_TITLES         SMALL_SECTION_TITLES         MINOR_SECTION_TITLES      \
                PART_CHAPTERS    CHAPTER_SECTIONS    SECTION_SUB_SECTIONS SUB_SECTION_SMALL_SECTIONS SMALL_SECTION_MINOR_SECTIONS                           \
                PART_START_LINES CHAPTER_START_LINES SECTION_START_LINES  SUB_SECTION_START_LINES    SMALL_SECTION_START_LINES    MINOR_SECTION_START_LINES \
                PART_END_LINES   CHAPTER_END_LINES   SECTION_END_LINES    SUB_SECTION_END_LINES      SMALL_SECTION_START_LINES    MINOR_SECTION_END_LINES   \
                PART_FILE_PATHS  CHAPTER_FILE_PATHS  SECTION_FILE_PATHS   SUB_SECTION_FILE_PATHS     SMALL_SECTION_START_LINES    MINOR_SECTION_FILE_PATHS  \
                PART_URLS        CHAPTER_URLS        SECTION_URLS         SUB_SECTION_URLS           SMALL_SECTION_START_LINES    MINOR_SECTION_URLS
do
  declare -p "$variable" | sed 's/^declare [^ ]* //' >> "$FULL_SOURCE_METADATA_FILE"
done

FN log light magenta "- Metadata saved to $FULL_SOURCE_METADATA_FILE"