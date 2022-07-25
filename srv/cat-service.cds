using {
  my.bookshop as my
} from '../db/data-model';

@protocol:'rest'
@(path: '/rest')
service CatalogServiceRest {
    @readonly entity EtAcdoca as projection on my.EtAcdoca;

    action createRecords(RECORDS : many EtAcdoca) returns String;
}

service CatalogService {
    @readonly entity EtAcdoca as projection on my.EtAcdoca;

    action createRecords(RECORDS : many EtAcdoca) returns String;
}