import http from 'k6/http';
import { check, sleep } from 'k6';

const target_vus = 10;

export const options = {
  stages: [
      { duration: "5s", target: target_vus },
      { duration: "50s", target: target_vus },
      { duration: "5s", target: 0 }
  ]
};

export default function () {
  const res = http.get('http://ecommerce-nginx:3333/products?page=1&size=1000');
  check(res, { 'status was 200': (r) => r.status == 200 });
  sleep(1);
}