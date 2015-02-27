_handle = CreateDialog "GJoiner";
Hint "Clique sur le nom d'un esquade pour la rejoindre.";
sleep 1;

While {dialog} do {

[] spawn Group_LB_Refresh;
sleep 0.1;
};