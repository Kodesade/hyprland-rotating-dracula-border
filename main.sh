ANGLE=45
COLORS='["rgba(8BE9FDff)", "rgba(50FA7BFF)", "rgba(FFB86Cff)", "rgba(FF79C6ff)", "rgba(BD93F9ff)", "rgba(FF5555ff)", "rgba(F1FA8Cff)" ]'
while true
do
        COLORS=$(echo "$COLORS" | jq '[.[-1]] + .[0:-1]')
        RES=$(echo "$COLORS" | jq 'join(" ")' | jq -r '"\(.)'" ${ANGLE}deg\"")
        hyprctl keyword general:col.active_border "$RES" &> /dev/null
        sleep 0.07
done

