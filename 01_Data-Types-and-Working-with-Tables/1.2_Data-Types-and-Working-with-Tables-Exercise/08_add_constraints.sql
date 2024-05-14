ALTER TABLE minions_info

ADD CONSTRAINT unique_containt /* Better name for the constraint is "UQ_id_email" */
UNIQUE (id, email),

ADD CONSTRAINT banana_check /* Better name for the constraint is "CK_banana_is_positive" */
CHECK (banana > 0); 