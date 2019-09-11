read -p "User name: " USERNAME
read -p "Full name: " COMMENT
useradd -c $COMMENT -Um $USERNAME
passwd $USERNAME
