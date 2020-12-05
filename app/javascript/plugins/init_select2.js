import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.distance').select2();
  $('.running-level').select2({
  width: '15%',
  minimumResultsForSearch: -1,
  placeholder: "Running Pace",
  allowClear: true});

  $('.gender').select2({
  width: '11%',
  minimumResultsForSearch: -1, 
  placeholder: "Gender",
  allowClear: true
 });

  $('.preferred-day').select2({ 
  width: '15%',
  minimumResultsForSearch: -1,
  placeholder: "preferred-day",
  allowClear: true  });

  $('.preferred-time').select2({ 
  width: '15%',
  minimumResultsForSearch: -1,
  placeholder: "preferred-time",
  allowClear: true });

  $('.pet').select2();
};

export { initSelect2 };
