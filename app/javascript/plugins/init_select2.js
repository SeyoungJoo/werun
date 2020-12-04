import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.distance').select2();
  $('.running-level').select2();
  $('.gender').select2();
  $('.preferred-time').select2();
  $('.preferred-day').select2();
  $('.pet').select2();
};

export { initSelect2 };