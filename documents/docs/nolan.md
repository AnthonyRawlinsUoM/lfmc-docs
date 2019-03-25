# Live Fuels (LFMC)

| | Metadata |
| :---- | :---- |
| **Description**   | An empirical model of live fuel moisture content, for spatially explicit monitoring of fuel dryness. |
| **Spatial Extent** | South-eastern Australia, forests and woodlands. |
| **Spatial Resolution** | 500 m. |
| **Temporal Resolution** | 8-day or monthly average. Current and hindcast conditions in near real time. |
| **Fuel Type** | Forests and woodlands (tree) |
| **Fuel Strata**  | Live – average of canopy, shrubs and forbs. |
| **Precision** | MAE = 15.5% RMSE = 19.0% |
| **Input types**  | Remotely sensed data (<cite>MODIS surface reflectance, MOD09A1</cite>). |
| **Design intent** | Spatial monitoring of live fuel moisture content, for resource placing, risk planning and warnings. |

---

# Dead Fuels (DFMC)

| | Metadata |
| :--- | :--- | 
|  **Description** | A semi-mechanistic model of fine, dead fuel moisture content, based on the exponential decline of fuel moisture content with atmospheric vapor pressure deficit, that predicts daily minimum fuel moisture content. |
| **Spatial Extent** | Global spatial extent. |
| **Spatial Resolution** | Spot scale resolution (<cite>Resco de Dios et al. 2015</cite>) 1 km resolution (MODIS derived VPD; Nolan et al. 2016) 5 km resolution (spatially interpolated weather data – SILO / AWAP for Australia; Nolan et al 2016) |
| **Temporal Resolution** | Forecast, current or hindcast conditions in near real time. |
| **Fuel Type** | All woody vegetation (shrub, tree) |
| **Fuel Strata**  | Dead, elevated and near surface fuel |
| **Precision** | MAE = 2.0-4.7% |
| **Input types**  | Gridded weather data (vapour pressure deficit) or remotely sensed data (vapour pressure deficit derived from land surface temperature). |
| **Design intent** | Spatial monitoring of fine, dead fuel moisture content, for resource placing, risk planning and warnings. |


---
<style>
@media all {
  .apa,     .apa ul,     .apa ol,     .apa dl,
  .ref-apa, .ref-apa ul, .ref-apa ol, .ref-apa dl,
  .apa-ref, .apa-ref ul, .apa-ref ol, .apa-ref dl,
  .refapa,  .refapa ul,  .refapa ol,  .refapa dl,
  .aparef,  .aparef ul,  .aparef ol,  .aparef dl{
  padding-left: 0;margin-left: 0;       
  }
  .apa li,
  .ref-apa li,
  .refapa li,
  .apa-ref li,
  .aparef li{
  list-style-type: none;
  }
  .apa p,     .apa li,     .apa dd,
  .ref-apa p, .ref-apa li, .ref-apa dd,
  .refapa p,  .refapa li,  .refapa dd,
  .apa-ref p, .apa-ref li, .apa-ref dd,
  .aparef p,  .aparef li,  .aparef dd{
  margin-left:   2em;
  text-indent:  -2em;
  margin-top: 1em;
  margin-bottom: 1em;
  }
  .ref-apa dt{
  font-size: 1.5em;
  font-weight: bold;
  margin: .83em 0;
  }
}
@media print {
  
  .apa p,     .apa li,     .apa dd,
  .ref-apa p, .ref-apa li, .ref-apa dd,
  .refapa p,  .refapa li,  .refapa dd,
  .apa-ref p, .apa-ref li, .apa-ref dd,
  .aparef p,  .aparef li,  .aparef dd{
  margin-left:   .5in;
  text-indent:  -.5in;
  margin-top: 1em;
  margin-bottom: 1em;
  }
  
}
</style>
## References
<div class="apa-ref" markdown="1">

Caccamo, G., Chisholm, L.A., Bradstock, R.A., Puotinen, M.L., Pippen, B.G., 2012. Monitoring live fuel moisture content of heathland, shrubland and sclerophyll forest in south-eastern Australia using MODIS data. Int. J. Wildland Fire 21, 257-269.

Nolan, R.H., Boer, M.M., Resco de Dios, V., Caccamo, G., Bradstock, R.A., 2016. Large-scale, dynamic transformations in fuel moisture drive wildfire activity across southeastern Australia. Geophys. Res. Lett. 43, 4229-4238.

Nolan, R.H., de Dios, V.R., Boer, M.M., Caccamo, G., Goulden, M.L., Bradstock, R.A., 2016. Predicting dead fine fuel moisture at regional scales using vapour pressure deficit from MODIS and gridded weather data. Remote Sens. Environ. 174, 100-108.

Resco de Dios, V., Fellows, A.W., Nolan, R.H., Boer, M.M., Bradstock, R.A., Domingo, F., Goulden, M.L., 2015. A semi-mechanistic model for predicting the moisture content of fine litter. Agric. For. Meteorol. 203, 64-73.
</div>