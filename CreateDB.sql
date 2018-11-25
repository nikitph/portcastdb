CREATE USER cycloneuser WITH ENCRYPTED PASSWORD 'abc';
GRANT ALL PRIVILEGES ON DATABASE cyclonedata TO cycloneuser;


CREATE TABLE "cyclone_info" (
	"storm_identifier" TEXT NOT NULL,
	"storm_name" TEXT NOT NULL,
	CONSTRAINT cyclone_info_pk PRIMARY KEY ("storm_identifier")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "cyclone_forecast_history" (
	"storm_identifier" TEXT NOT NULL,
	"time_of_forecast" TEXT NOT NULL,
	"forecast_hour" TEXT NOT NULL,
	"latitude" TEXT NOT NULL,
	"longitude" TEXT NOT NULL,
	"intensity" TEXT NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "cyclone_track_history" (
	"storm_identifier" TEXT NOT NULL,
	"synoptic_time" TEXT NOT NULL,
	"latitude" TEXT NOT NULL,
	"longitude" TEXT NOT NULL,
	"intensity" TEXT NOT NULL
) WITH (
  OIDS=FALSE
);




ALTER TABLE "cyclone_forecast_history" ADD CONSTRAINT "cyclone_forecast_history_fk0" FOREIGN KEY ("storm_identifier") REFERENCES "cyclone_info"("storm_identifier");

ALTER TABLE "cyclone_track_history" ADD CONSTRAINT "cyclone_track_history_fk0" FOREIGN KEY ("storm_identifier") REFERENCES "cyclone_info"("storm_identifier");
