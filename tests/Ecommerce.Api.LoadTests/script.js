import http from 'k6/http';
import { check, sleep } from 'k6';

const VUS = parseInt(__ENV.K6_VUS || '10', 10);
const DURATION = __ENV.K6_DURATION || '30s';

export const options = {
    vus: VUS,
    duration: DURATION,
  };

export default function () {
  const res = http.get('http://ecommerce-nginx:3000/products?page=1&size=1');
  check(res, { 'status was 200': (r) => r.status == 200 });
  sleep(1);
}