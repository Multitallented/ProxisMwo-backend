
CREATE TABLE mechs (
                       variant VARCHAR(50) PRIMARY KEY,
                       chassis VARCHAR(100) NOT NULL,
                       base_price INT NOT NULL,
                       quantity INT NOT NULL,
                       hero BOOLEAN DEFAULT FALSE,
                       legend BOOLEAN DEFAULT FALSE,
                       omni BOOLEAN DEFAULT FALSE,
                       tons INT NOT NULL,
                       volatility DOUBLE,
                       jets BOOLEAN DEFAULT FALSE,
                       fast_speed BOOLEAN DEFAULT FALSE,
                       slow_speed BOOLEAN DEFAULT FALSE,
                       mech_role VARCHAR(50)
);

CREATE TABLE units (
                       name VARCHAR(100) PRIMARY KEY,
                       description VARCHAR(2000),
                       clan BOOLEAN DEFAULT FALSE,
                       faction BOOLEAN DEFAULT FALSE,
                       pirate BOOLEAN DEFAULT FALSE,
                       mercenary BOOLEAN DEFAULT FALSE,
                       image VARCHAR(2000),
                       video VARCHAR(2000),
                       honor INT NOT NULL,
                       wins INT NOT NULL,
                       loses INT NOT NULL,
                       liquid_cbills DOUBLE NOT NULL,
                       leader VARCHAR(255) NOT NULL,
                       accolades INT NOT NULL,
                       lore_unit VARCHAR(100) NOT NULL
);

CREATE TABLE mechs_to_units (
    id INT AUTO_INCREMENT PRIMARY KEY,
                                variant VARCHAR(50) NOT NULL,
                                unit_name VARCHAR(100) NOT NULL
);

CREATE TABLE lore_units (
                           name VARCHAR(100) PRIMARY KEY,
                           clan BOOLEAN DEFAULT FALSE,
                           faction BOOLEAN DEFAULT FALSE,
                           pirate BOOLEAN DEFAULT FALSE,
                           mercenary BOOLEAN DEFAULT FALSE,
                           description VARCHAR(2000),
                           image VARCHAR(2000)
);

CREATE TABLE mech_role (
                           name VARCHAR(50) PRIMARY KEY,
                           long_range BOOLEAN DEFAULT FALSE,
                           mid_range BOOLEAN DEFAULT FALSE,
                           close_range BOOLEAN DEFAULT FALSE,
                           indirect_fire BOOLEAN DEFAULT FALSE,
                           precision_fire BOOLEAN DEFAULT FALSE,
                           hot BOOLEAN DEFAULT FALSE,
                           cold BOOLEAN DEFAULT FALSE
);

INSERT INTO mech_role (name) VALUES ("Any");

INSERT INTO mech_role (name, precision_fire, hot) VALUES ("Laser", TRUE, TRUE);
INSERT INTO mech_role (name, close_range, precision_fire, hot) VALUES ("Laser Brawl", TRUE, TRUE, TRUE);
INSERT INTO mech_role (name, mid_range, precision_fire, hot) VALUES ("Laser Vomit", TRUE, TRUE, TRUE);
INSERT INTO mech_role (name, long_range, precision_fire, hot) VALUES ("Laser Snipe", TRUE, TRUE, TRUE);

INSERT INTO mech_role (name, close_range) VALUES ("Brawl", TRUE);
INSERT INTO mech_role (name, mid_range, cold) VALUES ("DPS", TRUE, TRUE);
INSERT INTO mech_role (name, mid_range, precision_fire) VALUES ("Dakka", TRUE, TRUE);

INSERT INTO mech_role (name, long_range) VALUES ("Snipe", TRUE);
INSERT INTO mech_role (name, long_range, cold) VALUES ("Suppress", TRUE, TRUE);

INSERT INTO mech_role (name, mid_range, indirect_fire) VALUES ("LRMs", TRUE, TRUE);
INSERT INTO mech_role (name, long_range, indirect_fire) VALUES ("Arrows", TRUE, TRUE);

INSERT INTO mech_role (name, long_range, close_range) VALUES ("Bracket", TRUE, TRUE);
INSERT INTO mech_role (name, long_range, mid_range) VALUES ("Skirmish", TRUE, TRUE);
INSERT INTO mech_role (name, close_range, mid_range) VALUES ("Flex", TRUE, TRUE);

INSERT INTO lore_units (name, clan) VALUES ("Common Clan", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Rare Clan", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Common IS", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Rare IS", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Ice Hellion", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Smoke Jaguar", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Nova Cat", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Jade Falcon", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Hell''s Horses", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Diamond Shark", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Sea Fox", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Steel Viper", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Ghost Bear", TRUE);
INSERT INTO lore_units (name, clan) VALUES ("Clan Wolf", TRUE);
INSERT INTO lore_units (name, mercenary) VALUES ("Wolf''s Dragoons", TRUE);
INSERT INTO lore_units (name, mercenary) VALUES ("Gray Death Legion", TRUE);
INSERT INTO lore_units (name, mercenary) VALUES ("Common Mercenary", TRUE);
INSERT INTO lore_units (name, mercenary) VALUES ("Kell Hounds", TRUE);
INSERT INTO lore_units (name, mercenary) VALUES ("Bounty Hunter", TRUE);
INSERT INTO lore_units (name, pirate) VALUES ("Oberon Confederation", TRUE);
INSERT INTO lore_units (name, pirate) VALUES ("Rocky''s Bloodhands", TRUE);
INSERT INTO lore_units (name, pirate) VALUES ("The Ghostborn", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Lyran Commonwealth", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Capellan Confederation", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("St. Ives'' Compact", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Free Worlds League", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Federated Suns", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Draconis Combine", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Free Rasalhague Republic", TRUE);
INSERT INTO lore_units (name, faction) VALUES ("Comstar", TRUE);


INSERT INTO mechs VALUES ("ADR-PRIME", "ADR", 7024974, 0, FALSE, FALSE, TRUE, 35, 2.0, FALSE, FALSE, FALSE, "DPS");
INSERT INTO mechs VALUES ("ADR-A", "ADR", 6937211, 0, FALSE, FALSE, TRUE, 35, 2.0, FALSE, FALSE, FALSE, "DPS");
INSERT INTO mechs VALUES ("ADR-D", "ADR", 6729971, 0, FALSE, FALSE, TRUE, 35, 2.0, FALSE, FALSE, FALSE, "DPS");
INSERT INTO mechs VALUES ("ADR-B", "ADR", 6938004, 0, FALSE, FALSE, TRUE, 35, 2.0, FALSE, FALSE, FALSE, "DPS");
INSERT INTO mechs VALUES ("ADR-CN", "ADR", 8212500, 0, TRUE, FALSE, TRUE, 35, 2.0, FALSE, FALSE, FALSE, "DPS");
INSERT INTO mechs VALUES ("ADR-W", "ADR", 6474474, 0, FALSE, FALSE, TRUE, 35, 2.0, FALSE, FALSE, FALSE, "DPS");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ADR-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ADR-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ADR-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ADR-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ADR-CN", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ADR-W", "Common Clan");

INSERT INTO mechs VALUES ("ACH-PRIME", "ACH", 7737456, 0, FALSE, FALSE, TRUE, 35, 1.2, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("ACH-A", "ACH", 6957336, 0, FALSE, FALSE, TRUE, 35, 1.2, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACH-B", "ACH", 6920636, 0, FALSE, FALSE, TRUE, 35, 1.2, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACH-C", "ACH", 7617336, 0, FALSE, FALSE, TRUE, 35, 1.2, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACH-SH", "ACH", 7037500, 0, TRUE, FALSE, TRUE, 35, 1.2, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACH-E", "ACH", 6646086, 0, FALSE, FALSE, TRUE, 35, 1.2, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-PRIME", "Clan Ice Hellion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-PRIME", "Clan Smoke Jaguar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-PRIME", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-A", "Clan Ice Hellion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-A", "Clan Smoke Jaguar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-A", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-B", "Clan Ice Hellion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-B", "Clan Smoke Jaguar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-B", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-C", "Clan Ice Hellion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-C", "Clan Smoke Jaguar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-C", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-SH", "Clan Ice Hellion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-SH", "Clan Smoke Jaguar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-SH", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-E", "Clan Ice Hellion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-E", "Clan Smoke Jaguar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACH-E", "Clan Nova Cat");

INSERT INTO mechs VALUES ("FLE-W-C", "FLE-W-C", 3873083, 0, FALSE, FALSE, FALSE, 20, 1.5, FALSE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units VALUES ("FLE-W-C", "Wolf''s Dragoons");

INSERT INTO mechs VALUES ("COM-2D", "COM", 1781542, 0, FALSE, FALSE, FALSE, 25, 1.6, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("COM-3A", "COM", 1799526, 0, FALSE, FALSE, FALSE, 25, 1.8, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("COM-1B", "COM", 1694542, 0, FALSE, FALSE, FALSE, 25, 2.0, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("COM-1D", "COM", 1744526, 0, FALSE, FALSE, FALSE, 25, 2.0, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("COM-TDK", "COM", 4687500, 0, TRUE, FALSE, FALSE, 25, 1.6, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("COM-D03", "COM", 1919182, 0, FALSE, FALSE, FALSE, 25, 0.8, FALSE, TRUE, FALSE, "Laser Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COM-2D", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COM-3A", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COM-1B", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COM-1D", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COM-TDK", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COM-D03", "Lyran Commonwealth");

INSERT INTO mechs VALUES ("COM-IIC", "COM-IIC", 2314550, 0, FALSE, FALSE, FALSE, 25, 1.6, FALSE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COM-IIC", "Rare Clan");

INSERT INTO mechs VALUES ("COU-PRIME", "COU", 6246136, 0, FALSE, FALSE, TRUE, 35, 0.8, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("COU-C", "COU", 6526016, 0, FALSE, FALSE, TRUE, 35, 0.8, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("COU-D", "COU", 6417016, 0, FALSE, FALSE, TRUE, 35, 0.8, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("COU-E", "COU", 6552160, 0, FALSE, FALSE, TRUE, 35, 0.8, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("COU-H", "COU", 6571016, 0, FALSE, FALSE, TRUE, 35, 0.8, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("COU-BA", "COU", 8212500, 0, TRUE, FALSE, TRUE, 35, 0.8, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("COU-F", "COU", 6042516, 0, FALSE, FALSE, TRUE, 35, 0.8, TRUE, FALSE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COU-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COU-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COU-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COU-E", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COU-H", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COU-BA", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("COU-F", "Common Clan");

INSERT INTO mechs VALUES ("FMT-PRIME", "FMT", 5217550, 0, FALSE, FALSE, TRUE, 20, 0.3, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FMT-B", "FMT", 5225550, 0, FALSE, FALSE, TRUE, 20, 0.3, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FMT-C", "FMT", 4947670, 0, FALSE, FALSE, TRUE, 20, 0.3, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FMT-D", "FMT", 5398550, 0, FALSE, FALSE, TRUE, 20, 0.3, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FMT-H", "FMT", 4955550, 0, FALSE, FALSE, TRUE, 20, 0.3, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FMT-K", "FMT", 5031050, 0, FALSE, FALSE, TRUE, 20, 0.3, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FMT-AL", "FMT", 3750000, 0, TRUE, FALSE, TRUE, 20, 0.3, FALSE, TRUE, FALSE, "Laser Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FMT-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FMT-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FMT-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FMT-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FMT-H", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FMT-K", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FMT-AL", "Common Clan");

INSERT INTO mechs VALUES ("FS9-E", "FS9", 6562500, 0, TRUE, FALSE, FALSE, 35, 1.2, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("FS9-S", "FS9", 3231842, 0, FALSE, FALSE, FALSE, 35, 1.5, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FS9-A", "FS9", 2662358, 0, FALSE, FALSE, FALSE, 35, 1.5, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FS9-H", "FS9", 2629342, 0, FALSE, FALSE, FALSE, 35, 1.5, TRUE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("FS9-K", "FS9", 2662342, 0, FALSE, FALSE, FALSE, 35, 1.5, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FS9-FS", "FS9", 6562500, 0, TRUE, FALSE, FALSE, 35, 0.8, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("FS9-C", "FS9", 2895622, 0, FALSE, FALSE, FALSE, 35, 1.5, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FS9-E", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FS9-S", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FS9-A", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FS9-H", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FS9-K", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FS9-FS", "Capellan Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FS9-C", "Common IS");

INSERT INTO mechs VALUES ("FLE-17", "FLE", 1359826, 0, FALSE, FALSE, FALSE, 20, 0.8, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FLE-15", "FLE", 1359826, 0, FALSE, FALSE, FALSE, 20, 0.8, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FLE-19", "FLE", 1359826, 0, FALSE, FALSE, FALSE, 20, 0.8, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("FLE-20", "FLE", 1359826, 0, FALSE, FALSE, FALSE, 20, 0.8, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FLE-FA", "FLE", 1359826, 0, FALSE, FALSE, FALSE, 20, 0.8, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("FLE-5RK", "FLE", 3750000, 0, TRUE, FALSE, FALSE, 20, 0.8, FALSE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FLE-17", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FLE-15", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FLE-19", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FLE-20", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FLE-FA", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("FLE-5RK", "Free Worlds League");

INSERT INTO mechs VALUES ("INC-1", "INC", 5817697, 0, FALSE, FALSE, FALSE, 30, 1.4, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("INC-2", "INC", 6067697, 0, FALSE, FALSE, FALSE, 30, 0.9, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("INC-3", "INC", 5681697, 0, FALSE, FALSE, FALSE, 30, 1.3, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("INC-4", "INC", 5936697, 0, FALSE, FALSE, FALSE, 30, 0.8, FALSE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("INC-5", "INC", 5869137, 0, FALSE, FALSE, FALSE, 30, 0.5, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("INC-SA", "INC", 5625000, 0, TRUE, FALSE, FALSE, 30, 1.6, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("INC-Z0", "INC", 5625000, 0, FALSE, TRUE, FALSE, 30, 1.0, FALSE, TRUE, FALSE, "Laser Vomit");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-1", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-2", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-3", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-4", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-5", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-SA", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-Z0", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-1", "Clan Hell''s Horses");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-2", "Clan Hell''s Horses");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-3", "Clan Hell''s Horses");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-4", "Clan Hell''s Horses");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-5", "Clan Hell''s Horses");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-SA", "Clan Hell''s Horses");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("INC-Z0", "Clan Hell''s Horses");

INSERT INTO mechs VALUES ("JVN-10N", "JVN", 2373481, 0, FALSE, FALSE, FALSE, 30, 1.6, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("JVN-10F", "JVN", 2347513, 0, FALSE, FALSE, FALSE, 30, 1.7, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("JVN-10P", "JVN", 2300481, 0, FALSE, FALSE, FALSE, 30, 1.7, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("JVN-11A", "JVN", 2643299, 0, FALSE, FALSE, FALSE, 30, 1.4, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("JVN-11B", "JVN", 3113299, 0, FALSE, FALSE, FALSE, 30, 1.7, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("JVN-HT", "JVN", 5625000, 0, TRUE, FALSE, FALSE, 30, 1.8, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("JVN-11F", "JVN", 4543363, 0, FALSE, FALSE, FALSE, 30, 1.6, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JVN-10N", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JVN-10F", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JVN-10P", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JVN-11A", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JVN-11B", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JVN-HT", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JVN-11F", "Federated Suns");

INSERT INTO mechs VALUES ("JR7-D", "JR7", 3010018, 0, FALSE, FALSE, FALSE, 35, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("JR7-F", "JR7", 2893066, 0, FALSE, FALSE, FALSE, 35, 0.7, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("JR7-K", "JR7", 3139704, 0, FALSE, FALSE, FALSE, 35, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("JR7-O", "JR7", 6562500, 0, TRUE, FALSE, FALSE, 35, 1.2, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("JR7-A", "JR7", 2755018, 0, FALSE, FALSE, FALSE, 35, 1.0, TRUE, TRUE, FALSE, "Laser");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-D", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-F", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-K", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-O", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-A", "Common IS");

INSERT INTO mechs VALUES ("JR7-IIC", "JR7-IIC", 6916093, 0, FALSE, FALSE, FALSE, 35, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("JR7-IIC-2", "JR7-IIC-2", 6918153, 0, FALSE, FALSE, FALSE, 35, 0.9, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("JR7-IIC-3", "JR7-IIC-3", 6660093, 0, FALSE, FALSE, FALSE, 35, 0.7, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("JR7-IIC-A", "JR7-IIC-A", 6524093, 0, FALSE, FALSE, FALSE, 35, 1.0, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("JR7-IIC-FY", "JR7-IIC-FY", 6562500, 0, TRUE, FALSE, FALSE, 35, 1.1, TRUE, TRUE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-IIC", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-IIC-2", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-IIC-3", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-IIC-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("JR7-IIC-FY", "Clan Nova Cat");

INSERT INTO mechs VALUES ("KFX-PRIME", "KFX", 6008128, 0, FALSE, FALSE, TRUE, 30, 1.4, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("KFX-D", "KFX", 5949428, 0, FALSE, FALSE, TRUE, 30, 1.4, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("KFX-S", "KFX", 5848128, 0, FALSE, FALSE, TRUE, 30, 1.4, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("KFX-C", "KFX", 6810334, 0, FALSE, FALSE, TRUE, 30, 1.4, TRUE, TRUE, FALSE, "Laser Snipe");
INSERT INTO mechs VALUES ("KFX-PR", "KFX", 3517500, 0, TRUE, FALSE, TRUE, 30, 1.4, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("KFX-G", "KFX", 6283250, 0, FALSE, FALSE, TRUE, 30, 1.4, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("KFX-P", "KFX", 6320498, 0, FALSE, FALSE, TRUE, 30, 1.4, TRUE, TRUE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KFX-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KFX-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KFX-S", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KFX-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KFX-PR", "Clan Steel Viper");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KFX-G", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KFX-P", "Common Clan");

INSERT INTO mechs VALUES ("LCT-1V", "LCT", 1388242, 0, FALSE, FALSE, FALSE, 20, 1.4, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("LCT-3M", "LCT", 1777326, 0, FALSE, FALSE, FALSE, 20, 0.8, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("LCT-3S", "LCT", 1589282, 0, FALSE, FALSE, FALSE, 20, 1.3, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("LCT-1E", "LCT", 1491242, 0, FALSE, FALSE, FALSE, 20, 0.7, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("LCT-1M", "LCT", 1486254, 0, FALSE, FALSE, FALSE, 20, 1.5, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("LCT-PB", "LCT", 3750000, 0, FALSE, FALSE, FALSE, 20, 1.0, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("LCT-3V", "LCT", 1478234, 0, FALSE, FALSE, FALSE, 20, 0.9, FALSE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-1V", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-3M", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-3S", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-1E", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-1M", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-PB", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-PB", "Gray Death Legion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-PB", "Oberon Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("LCT-3V", "Common IS");

INSERT INTO mechs VALUES ("MLX-PRIME", "MLX", 5732606, 0, FALSE, FALSE, TRUE, 25, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("MLX-B", "MLX", 5964046, 0, FALSE, FALSE, TRUE, 25, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("MLX-C", "MLX", 6409546, 0, FALSE, FALSE, TRUE, 25, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("MLX-A", "MLX", 5810750, 0, FALSE, FALSE, TRUE, 25, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("MLX-D", "MLX", 5671096, 0, FALSE, FALSE, TRUE, 25, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("MLX-ED", "MLX", 7175000, 0, TRUE, FALSE, TRUE, 25, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("MLX-G", "MLX", 5468590, 0, FALSE, FALSE, TRUE, 25, 1.0, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("MLX-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("MLX-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("MLX-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("MLX-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("MLX-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("MLX-ED", "Clan Smoke Jaguar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("MLX-G", "Common Clan");

INSERT INTO mechs VALUES ("OSR-3D", "OSR", 5774714, 0, FALSE, FALSE, FALSE, 30, 1.2, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("OSR-4D", "OSR", 5892802, 0, FALSE, FALSE, FALSE, 30, 1.3, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("OSR-1V", "OSR", 5453318, 0, FALSE, FALSE, FALSE, 30, 1.4, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("OSR-2V", "OSR", 5187802, 0, FALSE, FALSE, FALSE, 30, 1.5, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("OSR-1P", "OSR", 5252714, 0, FALSE, FALSE, FALSE, 30, 1.1, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("OSR-SE", "OSR", 5625000, 0, TRUE, FALSE, FALSE, 30, 1.3, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("OSR-3D", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("OSR-4D", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("OSR-1V", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("OSR-2V", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("OSR-1P", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("OSR-SE", "Federated Suns");

INSERT INTO mechs VALUES ("PNT-10K", "PNT", 2878413, 0, FALSE, FALSE, FALSE, 35, 1.6, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PNT-8Z", "PNT", 2255413, 0, FALSE, FALSE, FALSE, 35, 1.7, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PNT-9R", "PNT", 2451413, 0, FALSE, FALSE, FALSE, 35, 1.1, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PNT-10P", "PNT", 4264458, 0, FALSE, FALSE, FALSE, 35, 1.5, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PNT-KK", "PNT", 6562500, 0, TRUE, FALSE, FALSE, 35, 1.6, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PNT-10K", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PNT-8Z", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PNT-9R", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PNT-10P", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PNT-KK", "Draconis Combine");

INSERT INTO mechs VALUES ("PIR-1", "PIR", 3721292, 0, FALSE, FALSE, FALSE, 20, 0.9, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PIR-2", "PIR", 3972792, 0, FALSE, FALSE, FALSE, 20, 0.9, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PIR-3", "PIR", 3930792, 0, FALSE, FALSE, FALSE, 20, 0.9, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PIR-A", "PIR", 4262000, 0, FALSE, FALSE, FALSE, 20, 0.9, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PIR-B", "PIR", 3786500, 0, FALSE, FALSE, FALSE, 20, 0.9, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PIR-CI", "PIR", 3750000, 0, FALSE, FALSE, FALSE, 20, 0.9, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PIR-D", "PIR", 3383315, 0, FALSE, FALSE, FALSE, 20, 0.9, FALSE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-1", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-1", "Clan Sea Fox");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-2", "Clan Ice Hellion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-3", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-3", "Clan Sea Fox");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-A", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-A", "Clan Sea Fox");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-B", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-B", "Clan Sea Fox");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-CI", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-CI", "Clan Sea Fox");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-D", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PIR-D", "Clan Sea Fox");

INSERT INTO mechs VALUES ("RVN-3L", "RVN", 5862992, 0, FALSE, FALSE, FALSE, 35, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("RVN-2X", "RVN", 2473658, 0, FALSE, FALSE, FALSE, 35, 1.8, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("RVN-4X", "RVN", 2520666, 0, FALSE, FALSE, FALSE, 35, 1.6, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("RVN-H", "RVN", 6562500, 0, TRUE, FALSE, FALSE, 35, 1.0, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("RVN-MN", "RVN", 5956492, 0, FALSE, FALSE, FALSE, 35, 1.3, FALSE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("RVN-3L", "Capellan Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("RVN-2X", "Capellan Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("RVN-4X", "Capellan Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("RVN-H", "Free Rasalhague Republic");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("RVN-MN", "Capellan Confederation");

INSERT INTO mechs VALUES ("SDR-5V", "SDR", 2598540, 0, FALSE, FALSE, FALSE, 30, 1.1, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("SDR-5D", "SDR", 2533540, 0, FALSE, FALSE, FALSE, 30, 1.1, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("SDR-5K", "SDR", 2452540, 0, FALSE, FALSE, FALSE, 30, 1.1, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("SDR-A", "SDR", 5625000, 0, FALSE, FALSE, FALSE, 30, 1.1, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SDR-5V", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SDR-5D", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SDR-5K", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SDR-A", "Common IS");

INSERT INTO mechs VALUES ("UM-R63", "UM", 2006108, 0, FALSE, FALSE, FALSE, 30, 1.5, TRUE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("UM-R60", "UM", 1560113, 0, FALSE, FALSE, FALSE, 30, 1.3, TRUE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("UM-R60L", "UM", 1744084, 0, FALSE, FALSE, FALSE, 30, 1.4, TRUE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("UM-K9", "UM", 5625000, 0, FALSE, FALSE, FALSE, 30, 1.0, TRUE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("UM-R68", "UM", 1646313, 0, FALSE, FALSE, FALSE, 30, 0.9, TRUE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("UM-SC", "UM", 5625000, 0, TRUE, FALSE, FALSE, 30, 0.9, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("UM-R80", "UM", 2862113, 0, FALSE, FALSE, FALSE, 30, 1.4, TRUE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("UM-R", "UM", 3183921, 0, FALSE, FALSE, FALSE, 30, 1.5, FALSE, FALSE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("UM-AIV", "UM", 2439613, 0, FALSE, FALSE, FALSE, 30, 1.1, TRUE, FALSE, FALSE, "Arrows");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-R63", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-R60", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-R60L", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-K9", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-R68", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-SC", "Capellan Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-R80", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-R", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-AIV", "Common IS");

INSERT INTO mechs VALUES ("UM-IIC", "UM-IIC", 5625000, 0, FALSE, TRUE, FALSE, 30, 2.0, TRUE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("UM-IIC-2", "UM-IIC", 5625000, 0, FALSE, TRUE, FALSE, 30, 2.0, TRUE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("UM-IIC-M", "UM-IIC", 1904697, 0, FALSE, FALSE, FALSE, 30, 2.0, FALSE, FALSE, TRUE, "DPS");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-IIC", "Clan Ghost Bear");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-IIC-2", "Clan Ghost Bear");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UM-IIC-M", "Common Clan");

INSERT INTO mechs VALUES ("WLF-2", "WLF", 2886748, 0, FALSE, FALSE, FALSE, 35, 1.0, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("WLF-1", "WLF", 2670748, 0, FALSE, FALSE, FALSE, 35, 1.0, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("WLF-1A", "WLF", 2594748, 0, FALSE, FALSE, FALSE, 35, 1.0, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("WLF-1B", "WLF", 2670748, 0, FALSE, FALSE, FALSE, 35, 1.0, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("WLF-GR", "WLF", 6562500, 0, TRUE, FALSE, FALSE, 35, 1.0, FALSE, TRUE, FALSE, "Laser Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-2", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-2", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-1", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-1", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-1A", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-1A", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-1B", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-1B", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-GR", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-GR", "Kell Hounds");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WLF-GR", "Clan Wolf");

INSERT INTO mechs VALUES ("WLF-C", "WLF-C", 5830494, 0, FALSE, FALSE, FALSE, 35, 1.7, FALSE, TRUE, FALSE, "Laser Brawl");

INSERT INTO mechs_to_units VALUES ("WLF-C", "Clan Wolf");

INSERT INTO mechs VALUES ("ACW-PRIME", "ACW", 8391238, 0, FALSE, FALSE, TRUE, 40, 1.0, TRUE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACW-A", "ACW", 8417478, 0, FALSE, FALSE, TRUE, 40, 1.0, FALSE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACW-P", "ACW", 8212238, 0, FALSE, FALSE, TRUE, 40, 1.0, FALSE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACW-1", "ACW", 7163142, 0, FALSE, FALSE, FALSE, 40, 1.0, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACW-2", "ACW", 6926142, 0, FALSE, FALSE, FALSE, 40, 1.0, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ACW-BK", "ACW", 7500000, 0, TRUE, FALSE, FALSE, 40, 1.4, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-PRIME", "Clan Wolf");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-PRIME", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-PRIME", "Clan Ghost Bear");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-PRIME", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-PRIME", "Kell Hounds");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-A", "Clan Wolf");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-A", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-A", "Clan Ghost Bear");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-A", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-A", "Kell Hounds");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-P", "Clan Wolf");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-P", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-P", "Clan Ghost Bear");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-P", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-P", "Kell Hounds");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-1", "Clan Wolf");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-1", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-1", "Clan Ghost Bear");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-1", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-1", "Kell Hounds");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-2", "Clan Wolf");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-2", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-2", "Clan Ghost Bear");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-2", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-2", "Kell Hounds");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ACW-BK", "Clan Wolf");

INSERT INTO mechs VALUES ("ASN-21", "ASN", 3489178, 0, FALSE, FALSE, FALSE, 40, 1.6, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ASN-23", "ASN", 3489178, 0, FALSE, FALSE, FALSE, 40, 1.7, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ASN-101", "ASN", 3489178, 0, FALSE, FALSE, FALSE, 40, 1.0, TRUE, TRUE, FALSE, "Laser Snipe");
INSERT INTO mechs VALUES ("ASN-26", "ASN", 3489178, 0, FALSE, FALSE, FALSE, 40, 1.8, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ASN-27", "ASN", 3489178, 0, FALSE, FALSE, FALSE, 40, 1.8, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ASN-DD", "ASN", 3489178, 0, TRUE, FALSE, FALSE, 40, 1.7, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ASN-21", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ASN-23", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ASN-101", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ASN-26", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ASN-27", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ASN-DD", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ASN-DD", "Bounty Hunter");

INSERT INTO mechs VALUES ("BJ-1", "BJ", 3385436, 0, FALSE, FALSE, FALSE, 45, 1.3, TRUE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("BJ-1DC", "BJ", 3385436, 0, FALSE, FALSE, FALSE, 45, 1.3, FALSE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("BJ-1X", "BJ", 3385436, 0, FALSE, FALSE, FALSE, 45, 1.3, FALSE, FALSE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("BJ-3", "BJ", 3385436, 0, FALSE, FALSE, FALSE, 45, 1.3, TRUE, FALSE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("BJ-A", "BJ", 3385436, 0, TRUE, FALSE, FALSE, 45, 1.3, FALSE, FALSE, FALSE, "DPS");
INSERT INTO mechs VALUES ("BJ-2", "BJ", 3385436, 0, FALSE, FALSE, FALSE, 45, 1.3, TRUE, FALSE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BJ-1", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BJ-1DC", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BJ-1X", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BJ-3", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BJ-A", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BJ-2", "Common IS");

INSERT INTO mechs VALUES ("BKL-PRIME", "BKL", 12303415, 0, FALSE, FALSE, TRUE, 55, 0.8, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("BKL-A", "BKL", 12506355, 0, FALSE, FALSE, TRUE, 55, 0.6, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("BKL-C", "BKL", 12056355, 0, FALSE, FALSE, TRUE, 55, 0.6, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("BKL-D", "BKL", 11881355, 0, FALSE, FALSE, TRUE, 55, 0.6, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("BKL-E", "BKL", 12171265, 0, FALSE, FALSE, TRUE, 55, 0.6, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("BKL-BL", "BKL", 12900000, 0, TRUE, FALSE, TRUE, 55, 0.6, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("BKL-M", "BKL", 8283364, 0, FALSE, FALSE, TRUE, 55, 0.7, FALSE, TRUE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BKL-PRIME", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BKL-A", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BKL-C", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BKL-D", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BKL-E", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BKL-BL", "Clan Jade Falcon");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BKL-M", "Clan Jade Falcon");

INSERT INTO mechs VALUES ("BSW-X1", "BSW", 7727307, 0, FALSE, FALSE, FALSE, 55, 0.7, FALSE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("BSW-X2", "BSW", 7605307, 0, FALSE, FALSE, FALSE, 55, 1.0, FALSE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("BSW-S2", "BSW", 8459237, 0, FALSE, FALSE, FALSE, 55, 1.2, FALSE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("BSW-P1", "BSW", 7453971, 0, FALSE, FALSE, FALSE, 55, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("BSW-P2", "BSW", 7742807, 0, FALSE, FALSE, FALSE, 55, 1.0, FALSE, TRUE, FALSE, "DPS");
INSERT INTO mechs VALUES ("BSW-HR", "BSW", 10312500, 0, TRUE, FALSE, FALSE, 55, 1.4, FALSE, TRUE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BSW-X1", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BSW-X2", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BSW-S2", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BSW-P1", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BSW-P2", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BSW-HR", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("BSW-HR", "Bounty Hunter");

INSERT INTO mechs VALUES ("CN9-A", "CN9", 3697080, 0, FALSE, FALSE, FALSE, 50, 1.5, FALSE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("CN9-AL", "CN9", 3697080, 0, FALSE, FALSE, FALSE, 50, 1.4, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("CN9-D", "CN9", 3697080, 0, FALSE, FALSE, FALSE, 50, 1.5, FALSE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("CN9-YLW", "CN9", 3697080, 0, TRUE, FALSE, FALSE, 50, 1.7, FALSE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("CN9-AH", "CN9", 3697080, 0, FALSE, FALSE, FALSE, 50, 1.6, FALSE, TRUE, FALSE, "DPS");
INSERT INTO mechs VALUES ("CN9-ON", "CN9", 3697080, 0, FALSE, TRUE, FALSE, 50, 1.7, FALSE, TRUE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CN9-A", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CN9-AL", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CN9-D", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CN9-YLW", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CN9-AH", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CN9-ON", "Federated Suns");

INSERT INTO mechs VALUES ("CDA-3M", "CDA", 7097444, 0, FALSE, FALSE, FALSE, 40, 1.4, FALSE, TRUE, FALSE, "Laser Snipe");
INSERT INTO mechs VALUES ("CDA-2A", "CDA", 3194994, 0, FALSE, FALSE, FALSE, 40, 1.9, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("CDA-2B", "CDA", 3182436, 0, FALSE, FALSE, FALSE, 40, 1.1, FALSE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("CDA-3C", "CDA", 3193110, 0, FALSE, FALSE, FALSE, 40, 1.8, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("CDA-X5", "CDA", 7500000, 0, TRUE, FALSE, FALSE, 40, 1.6, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("CDA-3F", "CDA", 7733836, 0, FALSE, FALSE, FALSE, 40, 1.0, TRUE, TRUE, FALSE, "Snipe");
INSERT INTO mechs VALUES ("CDA-M", "CDA", 6234182, 0, FALSE, FALSE, FALSE, 40, 1.5, TRUE, TRUE, FALSE, "DPS");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CDA-3M", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CDA-2A", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CDA-2B", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CDA-3C", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CDA-X5", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CDA-3F", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CDA-M", "Free Worlds League");

INSERT INTO mechs VALUES ("CRB-27", "CRB", 3792733, 0, FALSE, FALSE, FALSE, 50, 1.4, FALSE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("CRB-20", "CRB", 3703201, 0, FALSE, FALSE, FALSE, 50, 1.5, FALSE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("CRB-27B", "CRB", 4240733, 0, FALSE, FALSE, FALSE, 50, 1.1, FALSE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("CRB-27SL", "CRB", 7144233, 0, FALSE, FALSE, FALSE, 50, 1.0, TRUE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("CRB-FL", "CRB", 9375000, 0, TRUE, FALSE, FALSE, 50, 1.2, FALSE, TRUE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-27", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-27", "Comstar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-20", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-20", "Comstar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-27B", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-27B", "Comstar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-27SL", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-27SL", "Comstar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("CRB-FL", "Comstar");

INSERT INTO mechs VALUES ("DV-6M", "DV", 4722811, 0, FALSE, FALSE, FALSE, 55, 1.2, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("DV-7D", "DV", 5081279, 0, FALSE, FALSE, FALSE, 55, 1.1, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("DV-8D", "DV", 8824219, 0, FALSE, FALSE, FALSE, 55, 1.6, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("DV-6MR", "DV", 4868811, 0, FALSE, FALSE, FALSE, 55, 1.5, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("DV-7P", "DV", 7854091, 0, FALSE, FALSE, FALSE, 55, 1.6, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("DV-FR", "DV", 10312500, 0, TRUE, FALSE, FALSE, 55, 1.6, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("DV-6M", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("DV-7D", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("DV-8D", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("DV-6MR", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("DV-7P", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("DV-FR", "Federated Suns");

INSERT INTO mechs VALUES ("ENF-5D", "ENF", 7566723, 0, FALSE, FALSE, FALSE, 50, 1.6, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("ENF-4R", "ENF", 3818468, 0, FALSE, FALSE, FALSE, 50, 1.3, TRUE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("ENF-5P", "ENF", 6743201, 0, FALSE, FALSE, FALSE, 50, 1.7, TRUE, TRUE, FALSE, "DPS");
INSERT INTO mechs VALUES ("ENF-4P", "ENF", 4080698, 0, FALSE, FALSE, FALSE, 50, 1.8, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("ENF-GH", "ENF", 9375000, 0, FALSE, FALSE, FALSE, 50, 1.7, TRUE, TRUE, FALSE, "Laser Vomit");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ENF-5D", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ENF-4R", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ENF-5P", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ENF-4P", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("ENF-GH", "Federated Suns");

INSERT INTO mechs VALUES ("GTL-10", "GTL", 8394002, 0, FALSE, FALSE, FALSE, 55, 1.4, FALSE, FALSE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("GTL-10A", "GTL", 9019302, 0, FALSE, FALSE, FALSE, 55, 1.3, FALSE, FALSE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("GTL-10B", "GTL", 9849002, 0, FALSE, FALSE, FALSE, 55, 1.2, TRUE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("GTL-10C", "GTL", 9142252, 0, FALSE, FALSE, FALSE, 55, 1.4, FALSE, FALSE, FALSE, "DPS");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GTL-10", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GTL-10A", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GTL-10B", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GTL-10C", "Lyran Commonwealth");

INSERT INTO mechs VALUES ("GRF-1N", "GRF", 4696842, 0, FALSE, FALSE, FALSE, 55, 1.5, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("GRF-1S", "GRF", 4486782, 0, FALSE, FALSE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("GRF-3M", "GRF", 8277350, 0, FALSE, FALSE, FALSE, 55, 1.3, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("GRF-1E", "GRF", 10310000, 0, TRUE, FALSE, FALSE, 55, 1.5, TRUE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("GRF-2N", "GRF", 5619334, 0, FALSE, FALSE, FALSE, 55, 1.2, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("GRF-5M", "GRF", 7797290, 0, FALSE, FALSE, FALSE, 55, 1.0, TRUE, TRUE, FALSE, "Suppress");
INSERT INTO mechs VALUES ("GRF-AR", "GRF", 10310000, 0, TRUE, FALSE, FALSE, 55, 1.5, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GRF-1N", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GRF-1S", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GRF-3M", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GRF-1E", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GRF-2N", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GRF-5M", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("GRF-AR", "Common Mercenary");

INSERT INTO mechs VALUES ("HCT-3F", "HCT", 3340429, 0, FALSE, FALSE, FALSE, 45, 1.1, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HCT-5S", "HCT", 5994133, 0, FALSE, FALSE, FALSE, 45, 1.5, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("HCT-6D", "HCT", 7301494, 0, FALSE, FALSE, FALSE, 45, 1.0, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HCT-5K", "HCT", 5653519, 0, FALSE, FALSE, FALSE, 45, 0.8, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HCT-7R", "HCT", 5309991, 0, FALSE, FALSE, FALSE, 45, 1.8, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("HCT-TM", "HCT", 8437500, 0, TRUE, FALSE, FALSE, 45, 1.6, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-3F", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-5S", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-6D", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-5K", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-7R", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-TM", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-3F", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-5S", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-6D", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-5K", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HCT-7R", "Lyran Commonwealth");

INSERT INTO mechs VALUES ("HSN-7D", "HSN", 7418649, 0, FALSE, FALSE, FALSE, 45, 1.6, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("HSN-8E", "HSN", 7758769, 0, FALSE, FALSE, FALSE, 45, 1.7, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("HSN-9F", "HSN", 6943721, 0, FALSE, FALSE, FALSE, 45, 1.4, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HSN-7P", "HSN", 7173269, 0, FALSE, FALSE, FALSE, 45, 1.2, FALSE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HSN-8P", "HSN", 6974769, 0, FALSE, FALSE, FALSE, 45, 1.5, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("HSN-7D2", "HSN", 8437500, 0, TRUE, FALSE, FALSE, 45, 1.8, TRUE, TRUE, FALSE, "Laser Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HSN-7D", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HSN-8E", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HSN-9F", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HSN-7P", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HSN-8P", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HSN-7D2", "Rocky''s Bloodhands");

INSERT INTO mechs VALUES ("HBK-4G", "HBK", 3694490, 0, FALSE, FALSE, FALSE, 50, 1.5, FALSE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HBK-4P", "HBK", 3594484, 0, FALSE, FALSE, FALSE, 50, 1.1, FALSE, FALSE, FALSE, "Laser");
INSERT INTO mechs VALUES ("HBK-4H", "HBK", 3646484, 0, FALSE, FALSE, FALSE, 50, 1.8, FALSE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("HBK-4J", "HBK", 3778604, 0, FALSE, FALSE, FALSE, 50, 1.6, FALSE, FALSE, FALSE, "LRMs");
INSERT INTO mechs VALUES ("HBK-4SP", "HBK", 3632484, 0, FALSE, FALSE, FALSE, 50, 1.3, FALSE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HBK-GI", "HBK", 9375000, 0, TRUE, FALSE, FALSE, 50, 1.5, FALSE, FALSE, FALSE, "Sniper");
INSERT INTO mechs VALUES ("HBK-AZ", "HBK", 9375000, 0, TRUE, FALSE, FALSE, 50, 0.4, FALSE, FALSE, FALSE, "Suppress");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-4G", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-4P", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-4H", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-4J", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-4SP", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-GI", "Federated Suns");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-AZ", "Draconis Combine");

INSERT INTO mechs VALUES ("HBK-IIC", "HBK-IIC", 7511790, 0, FALSE, FALSE, FALSE, 50, 0.9, TRUE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HBK-IIC-A", "HBK-IIC", 6947852, 0, FALSE, FALSE, FALSE, 50, 0.5, TRUE, FALSE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("HBK-IIC-B", "HBK-IIC", 6823852, 0, FALSE, FALSE, FALSE, 50, 1.3, TRUE, FALSE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("HBK-IIC-C", "HBK-IIC", 7199820, 0, FALSE, FALSE, FALSE, 50, 1.5, TRUE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("HBK-IIC-DW", "HBK-IIC", 9400000, 0, TRUE, FALSE, FALSE, 50, 1.4, TRUE, FALSE, FALSE, "Bracket");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-IIC", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-IIC-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-IIC-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-IIC-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HBK-IIC-DW", "Clan Smoke Jaguar");

INSERT INTO mechs VALUES ("HMN-PRIME", "HMN", 10452733, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("HMN-A", "HMN", 9445923, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("HMN-B", "HMN", 9890523, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("HMN-C", "HMN", 9939183, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("HMN-P", "HMN", 9867123, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("HMN-PA", "HMN", 11725000, 0, TRUE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("HMN-H", "HMN", 8777153, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Skirmish");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HMN-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HMN-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HMN-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HMN-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HMN-P", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HMN-PA", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("HMN-H", "Common Clan");

INSERT INTO mechs VALUES ("IFR-PRIME", "HMN", 10489550, 0, FALSE, FALSE, TRUE, 45, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("IFR-A", "HMN", 10208350, 0, FALSE, FALSE, TRUE, 45, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("IFR-C", "HMN", 10065910, 0, FALSE, FALSE, TRUE, 45, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("IFR-D", "HMN", 10065049, 0, FALSE, FALSE, TRUE, 45, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("IFR-B", "HMN", 10149049, 0, FALSE, FALSE, TRUE, 45, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("IFR-RC", "HMN", 10489550, 0, FALSE, FALSE, TRUE, 45, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("IFR-P", "HMN", 10633549, 0, FALSE, FALSE, TRUE, 45, 1.1, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("IFR-J", "HMN", 9683549, 0, FALSE, FALSE, TRUE, 45, 1.1, FALSE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("IFR-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("IFR-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("IFR-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("IFR-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("IFR-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("IFR-RC", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("IFR-P", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("IFR-J", "Common Clan");

INSERT INTO mechs VALUES ("KTO-GB", "KTO", 10312500, 0, TRUE, FALSE, FALSE, 55, 1.4, FALSE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("KTO-20", "KTO", 4697395, 0, FALSE, FALSE, FALSE, 55, 1.2, FALSE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("KTO-18", "KTO", 4474807, 0, FALSE, FALSE, FALSE, 55, 1.6, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("KTO-19", "KTO", 4589395, 0, FALSE, FALSE, FALSE, 55, 1.6, FALSE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KTO-GB", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KTO-20", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KTO-18", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KTO-19", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KTO-20", "Comstar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KTO-18", "Comstar");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("KTO-19", "Comstar");

INSERT INTO mechs VALUES ("NVA-PRIME", "NVA", 9968438, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("NVA-B", "NVA", 8803938, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("NVA-S", "NVA", 9363437, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("NVA-A", "NVA", 9722437, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("NVA-C", "NVA", 8799437, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("NVA-D", "NVA", 9090617, 0, FALSE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("NVA-BK", "NVA", 11725000, 0, TRUE, FALSE, TRUE, 50, 1.0, TRUE, FALSE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("NVA-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("NVA-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("NVA-S", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("NVA-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("NVA-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("NVA-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("NVA-BK", "Clan Hell'' Horses");

INSERT INTO mechs VALUES ("PXH-1", "PXH", 3841552, 0, FALSE, FALSE, FALSE, 45, 1.3, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("PXH-1B", "PXH", 7895552, 0, FALSE, FALSE, FALSE, 45, 1.4, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("PXH-1K", "PXH", 3413076, 0, FALSE, FALSE, FALSE, 45, 0.9, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("PXH-2", "PXH", 4224560, 0, FALSE, FALSE, FALSE, 45, 1.4, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("PXH-3S", "PXH", 7154012, 0, FALSE, FALSE, FALSE, 45, 1.2, TRUE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("PXH-R", "PXH", 8435000, 0, TRUE, FALSE, FALSE, 45, 1.3, TRUE, TRUE, FALSE, "Flex");
INSERT INTO mechs VALUES ("PXH-KK", "PXH", 8435000, 0, TRUE, FALSE, FALSE, 45, 1.6, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("PXH-7S", "PXH", 3841552, 0, FALSE, FALSE, FALSE, 45, 1.7, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("PXH-S", "PXH", 8435000, 0, FALSE, TRUE, FALSE, 45, 1.6, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-1", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-1B", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-1K", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-2", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-3S", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-R", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-KK", "Draconis Combine");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-7S", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("PXH-S", "Common IS");

INSERT INTO mechs VALUES ("SHC-PRIME", "SHC", 9614176, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("SHC-A", "SHC", 9838176, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("SHC-B", "SHC", 10514656, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("SHC-P", "SHC", 8957176, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("SHC-MI", "SHC", 10550000, 0, TRUE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("SHC-H", "SHC", 9542416, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("SHC-D", "SHC", 9644008, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("SHC-NO", "SHC", 8435000, 0, FALSE, TRUE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Any");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHC-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHC-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHC-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHC-P", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHC-MI", "Clan Nova Cat");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHC-H", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHC-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHC-NO", "Common Clan");

INSERT INTO mechs VALUES ("SHD-2H", "SHD", 4356283, 0, FALSE, FALSE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "DPS");
INSERT INTO mechs VALUES ("SHD-2D2", "SHD", 4473235, 0, FALSE, FALSE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("SHD-5M", "SHD", 8166799, 0, FALSE, FALSE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "DPS");
INSERT INTO mechs VALUES ("SHD-2D", "SHD", 4441203, 0, FALSE, FALSE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "Sniper");
INSERT INTO mechs VALUES ("SHD-2K", "SHD", 4394783, 0, FALSE, FALSE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("SHD-GD", "SHD", 10312500, 0, TRUE, FALSE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("SHD-S", "SHD", 10310000, 0, FALSE, TRUE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("SHD-5DS", "SHD", 4952723, 0, FALSE, FALSE, FALSE, 55, 1.4, TRUE, TRUE, FALSE, "Laser");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-2H", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-2D2", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-5M", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-2D", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-2K", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-GD", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-GD", "Gray Death Legion");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-S", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-5DS", "Common IS");

INSERT INTO mechs VALUES ("SHD-IIC", "SHD-IIC", 4190629, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Flex");
INSERT INTO mechs VALUES ("SHD-IIC-2", "SHD-IIC", 4458629, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("SHD-IIC-4", "SHD-IIC", 4415039, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "LRMs");
INSERT INTO mechs VALUES ("SHD-IIC-5", "SHD-IIC", 4236129, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("SHD-IIC-6", "SHD-IIC", 7103629, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("SHD-IIC-A", "SHD-IIC", 7691689, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Flex");
INSERT INTO mechs VALUES ("SHD-IIC-B", "SHD-IIC", 7645169, 0, FALSE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("SHD-IIC-DT", "SHD-IIC", 8437500, 0, TRUE, FALSE, TRUE, 45, 0.7, TRUE, TRUE, FALSE, "Flex");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-IIC", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-IIC-2", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-IIC-4", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-IIC-5", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-IIC-6", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-IIC-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-IIC-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SHD-IIC-DT", "Common Clan");

INSERT INTO mechs VALUES ("SCR-PRIME", "SCR", 11113382, 0, FALSE, FALSE, TRUE, 55, 0.9, FALSE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("SCR-C", "SCR", 11139367, 0, FALSE, FALSE, TRUE, 55, 0.9, FALSE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("SCR-D", "SCR", 11187742, 0, FALSE, FALSE, TRUE, 55, 0.9, FALSE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("SCR-A", "SCR", 11317504, 0, FALSE, FALSE, TRUE, 55, 0.9, FALSE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("SCR-B", "SCR", 11685354, 0, FALSE, FALSE, TRUE, 55, 0.9, FALSE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("SCR-LC", "SCR", 12900000, 0, FALSE, FALSE, TRUE, 55, 0.9, FALSE, FALSE, FALSE, "Any");
INSERT INTO mechs VALUES ("SCR-COR", "SCR", 12900000, 0, FALSE, TRUE, TRUE, 55, 0.9, FALSE, FALSE, FALSE, "Dakka");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SCR-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SCR-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SCR-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SCR-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SCR-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SCR-LC", "Clan Diamond Shark");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("SCR-COR", "Common Clan");

INSERT INTO mechs VALUES ("TBT-7M", "TBT", 7623797, 0, FALSE, FALSE, FALSE, 50, 1.3, TRUE, TRUE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("TBT-3C", "TBT", 8503816, 0, FALSE, FALSE, FALSE, 50, 1.7, FALSE, TRUE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("TBT-5J", "TBT", 4186745, 0, FALSE, FALSE, FALSE, 50, 0.9, TRUE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("TBT-5N", "TBT", 4161797, 0, FALSE, FALSE, FALSE, 50, 1.6, FALSE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("TBT-7K", "TBT", 3867177, 0, FALSE, FALSE, FALSE, 50, 1.8, FALSE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("TBT-LG", "TBT", 9375000, 0, FALSE, FALSE, FALSE, 50, 1.6, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("TBT-7M", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("TBT-3C", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("TBT-5J", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("TBT-5N", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("TBT-7K", "Free Worlds League");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("TBT-LG", "Free Worlds League");

INSERT INTO mechs VALUES ("UZL-3S", "UZL", 8046652, 0, FALSE, FALSE, FALSE, 50, 1.8, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("UZL-2S", "UZL", 8397352, 0, FALSE, FALSE, FALSE, 50, 1.8, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("UZL-3P", "UZL", 7664277, 0, FALSE, FALSE, FALSE, 50, 1.8, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("UZL-5P", "UZL", 8093352, 0, FALSE, FALSE, FALSE, 50, 1.8, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("UZL-6P", "UZL", 7349693, 0, FALSE, FALSE, FALSE, 50, 1.8, TRUE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("UZL-BE", "UZL", 9375000, 0, TRUE, FALSE, FALSE, 50, 0.7, TRUE, TRUE, FALSE, "Dakka");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UZL-3S", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UZL-2S", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UZL-3P", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UZL-5P", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UZL-6P", "Lyran Commonwealth");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("UZL-BE", "Wolf''s Dragoons");

INSERT INTO mechs VALUES ("VGL-1", "VGL", 8842414, 0, FALSE, FALSE, FALSE, 55, 1.8, TRUE, TRUE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("VGL-2", "VGL", 8910414, 0, FALSE, FALSE, FALSE, 55, 1.6, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("VGL-3", "VGL", 9447384, 0, FALSE, FALSE, FALSE, 55, 1.8, TRUE, TRUE, FALSE, "Skirmish");
INSERT INTO mechs VALUES ("VGL-4", "VGL", 9040794, 0, FALSE, FALSE, FALSE, 55, 1.7, FALSE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("VGL-A", "VGL", 9146864, 0, FALSE, FALSE, FALSE, 55, 1.6, TRUE, TRUE, FALSE, "Any");
INSERT INTO mechs VALUES ("VGL-RI", "VGL", 10312500, 0, FALSE, FALSE, FALSE, 55, 0.7, TRUE, TRUE, FALSE, "Sniper");
INSERT INTO mechs VALUES ("VGL-GW", "VGL", 10312500, 0, FALSE, FALSE, FALSE, 55, 1.0, TRUE, TRUE, FALSE, "Skirmish");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VGL-1", "Clan Steel Viper");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VGL-2", "Clan Steel Viper");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VGL-3", "Clan Steel Viper");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VGL-4", "Clan Steel Viper");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VGL-A", "Clan Steel Viper");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VGL-RI", "Clan Steel Viper");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VGL-GW", "Clan Steel Viper");

INSERT INTO mechs VALUES ("VND-1SIB", "VND", 8437500, 0, TRUE, FALSE, FALSE, 45, 1.7, TRUE, FALSE, FALSE, "Flex");
INSERT INTO mechs VALUES ("VND-1R", "VND", 3394029, 0, FALSE, FALSE, FALSE, 45, 1.4, TRUE, FALSE, FALSE, "Laser");
INSERT INTO mechs VALUES ("VND-1AA", "VND", 3693024, 0, FALSE, FALSE, FALSE, 45, 1.5, TRUE, FALSE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("VND-1X", "VND", 3388529, 0, FALSE, FALSE, FALSE, 45, 1.2, TRUE, FALSE, FALSE, "DPS");
INSERT INTO mechs VALUES ("VND-5L", "VND", 4051477, 0, FALSE, FALSE, FALSE, 45, 0.8, TRUE, FALSE, FALSE, "Laser Vomit");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VND-1SIB", "St. Ives'' Compact");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VND-1R", "Capellan Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VND-1AA", "Capellan Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VND-1X", "Capellan Confederation");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VND-5L", "Capellan Confederation");

INSERT INTO mechs VALUES ("VPR-PRIME", "VPR", 9542887, 0, FALSE, FALSE, TRUE, 40, 1.1, TRUE, TRUE, FALSE, "Flex");
INSERT INTO mechs VALUES ("VPR-A", "VPR", 10046887, 0, FALSE, FALSE, TRUE, 40, 1.1, TRUE, TRUE, FALSE, "Flex");
INSERT INTO mechs VALUES ("VPR-B", "VPR", 9611887, 0, FALSE, FALSE, TRUE, 40, 1.1, TRUE, TRUE, FALSE, "Sniper");
INSERT INTO mechs VALUES ("VPR-C", "VPR", 9743887, 0, FALSE, FALSE, TRUE, 40, 1.1, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("VPR-D", "VPR", 9659447, 0, FALSE, FALSE, TRUE, 40, 1.1, TRUE, TRUE, FALSE, "Flex");
INSERT INTO mechs VALUES ("VPR-M", "VPR", 9375000, 0, TRUE, FALSE, TRUE, 40, 1.1, TRUE, TRUE, FALSE, "Laser Brawl");
INSERT INTO mechs VALUES ("VPR-F", "VPR", 9534384, 0, FALSE, FALSE, TRUE, 40, 1.1, TRUE, TRUE, FALSE, "Brawl");
INSERT INTO mechs VALUES ("VPR-SCS", "VPR", 7500000, 0, FALSE, TRUE, TRUE, 40, 1.1, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VPR-PRIME", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VPR-A", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VPR-B", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VPR-C", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VPR-D", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VPR-M", "Clan Wolf");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VPR-F", "Common Clan");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VPR-SCS", "Common Mercenary");

INSERT INTO mechs VALUES ("VL-2T", "VL", 3249735, 0, FALSE, FALSE, FALSE, 40, 1.2, TRUE, TRUE, FALSE, "Laser Snipe");
INSERT INTO mechs VALUES ("VL-5T", "VL", 3249735, 0, FALSE, FALSE, FALSE, 40, 1.3, TRUE, TRUE, FALSE, "Laser");
INSERT INTO mechs VALUES ("VL-5M", "VL", 3249735, 0, FALSE, FALSE, FALSE, 40, 1.4, TRUE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("VL-5S", "VL", 3249735, 0, FALSE, FALSE, FALSE, 40, 0.7, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("VL-6M", "VL", 3249735, 0, FALSE, FALSE, FALSE, 40, 1.0, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("VL-BL", "VL", 3249735, 0, TRUE, FALSE, FALSE, 40, 1.8, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VL-2T", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VL-5T", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VL-5M", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VL-5S", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VL-6M", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("VL-BL", "Lyran Commonwealth");

INSERT INTO mechs VALUES ("WVR-6R", "WVR", 4558222, 0, FALSE, FALSE, FALSE, 55, 1.7, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("WVR-6K", "WVR", 4281254, 0, FALSE, FALSE, FALSE, 55, 1.7, FALSE, TRUE, FALSE, "Laser Vomit");
INSERT INTO mechs VALUES ("WVR-7K", "WVR", 7766380, 0, FALSE, FALSE, FALSE, 55, 1.7, TRUE, TRUE, FALSE, "Flex");
INSERT INTO mechs VALUES ("WVR-Q", "WVR", 10310000, 0, TRUE, FALSE, FALSE, 55, 1.7, TRUE, TRUE, FALSE, "Dakka");
INSERT INTO mechs VALUES ("WVR-7D", "WVR", 7916334, 0, FALSE, FALSE, FALSE, 55, 1.7, TRUE, TRUE, FALSE, "Flex");
INSERT INTO mechs VALUES ("WVR-S", "WVR", 10310000, 0, FALSE, TRUE, FALSE, 55, 1.7, TRUE, TRUE, FALSE, "Brawl");

INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WVR-6R", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WVR-6K", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WVR-7K", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WVR-Q", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WVR-7D", "Common IS");
INSERT INTO mechs_to_units (variant, unit_name) VALUES ("WVR-S", "The Ghostborn");
