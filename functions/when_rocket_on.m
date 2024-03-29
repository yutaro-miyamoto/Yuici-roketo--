function [velocity, location] = ...
    when_rocket_on(Weight, gravitational_acceleration, air_resistance, velocity_before, ...
                location_before, Weight_of_fuel_using, wind_speed, dt, F_rv, heading_vector)
%WHEN_ROCKET_ON この関数の概要をここに記述
%ロケット推進がOnの時の弾道計算を行う。
%   詳細説明をここに記述

%force = [0;0;-Weight * gravitational_acceleration] - air_resistance;
force = [0;0;-Weight * gravitational_acceleration] - air_resistance + F_rv;

% velocity = velocity_before +  force / Weight * dt + Isp * gravitational_acceleration * log(Weight/(Weight-Weight_of_fuel_using)) * heading_vector + wind_speed;

velocity = velocity_before +  force / Weight * dt;

location = location_before + (velocity + wind_speed) * dt;
end

