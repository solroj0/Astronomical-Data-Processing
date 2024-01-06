from astroquery.vizier import Vizier
from astropy.coordinates import Angle

Vizier.ROW_LIMIT = 500

result = Vizier.query_region("polaris", radius=Angle(2, "deg"), catalog='GSC')

interesting_table = result['I/254/out']
print(interesting_table)
