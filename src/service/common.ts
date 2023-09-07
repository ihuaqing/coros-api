export const BASE_URL = 'https://teamcnapi.coros.com';

export type CorosResponse<T> = {
  apiCode: string;
  data: T;
  message: string;
  result: string;
};
