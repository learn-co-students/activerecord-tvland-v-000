=> [32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000000037d05e8[0m
 @active[32m=[0m[1;36mnil[0m,
 @config[32m=[0m{[33m:adapter[0m=>[31m[1;31m"[0m[31msqlite3[1;31m"[0m[31m[0m, [33m:database[0m=>[31m[1;31m"[0m[31mdb/ar.db[1;31m"[0m[31m[0m},
 @connection[32m=[0m
  [32m#<SQLite3::Database:0x000000037d07f0[0m
   @authorizer[32m=[0m[1;36mnil[0m,
   @busy_handler[32m=[0m[1;36mnil[0m,
   @collations[32m=[0m{},
   @encoding[32m=[0m[32m#<Encoding:UTF-8>[0m,
   @functions[32m=[0m{},
   @readonly[32m=[0m[1;36mfalse[0m,
   @results_as_hash[32m=[0m[1;36mtrue[0m,
   @tracefunc[32m=[0m[1;36mnil[0m,
   @type_translation[32m=[0m[1;36mnil[0m[32m>[0m,
 @instrumenter[32m=[0m
  [32m#<ActiveSupport::Notifications::Instrumenter:0x000000021ecab0[0m
   @id[32m=[0m[31m[1;31m"[0m[31m8d78b6449d90989d2fbc[1;31m"[0m[31m[0m,
   @notifier[32m=[0m
    [32m#<ActiveSupport::Notifications::Fanout:0x00000002782df8[0m
     @_mutex[32m=[0m[32m#<Thread::Mutex:0x00000002782c68[0m[32m>[0m,
     @listeners_for[32m=[0m
      [32m#<Concurrent::Map:0x00000002782da8 entries=2 default_proc=nil>[0m,
     @subscribers[32m=[0m
      [[32m#<ActiveSupport::Notifications::Fanout::Subscribers::Evented:0x0000000205f3a0[0m
        @can_publish[32m=[0m[1;36mfalse[0m,
        @delegate[32m=[0m
         [32m#<ActiveRecord::LogSubscriber:0x0000000205f6e8[0m
          @patterns[32m=[0m[[31m[1;31m"[0m[31msql.active_record[1;31m"[0m[31m[0m],
          @queue_key[32m=[0m[31m[1;31m"[0m[31mActiveRecord::LogSubscriber-16972660[1;31m"[0m[31m[0m[32m>[0m,
        @pattern[32m=[0m[31m[1;31m"[0m[31msql.active_record[1;31m"[0m[31m[0m[32m>[0m,
       [32m#<ActiveSupport::Notifications::Fanout::Subscribers::Evented:0x00000002788078[0m
        @can_publish[32m=[0m[1;36mfalse[0m,
        @delegate[32m=[0m[32m#<ActiveRecord::ExplainSubscriber:0x000000027880f0[0m[32m>[0m,
        @pattern[32m=[0m[31m[1;31m"[0m[31msql.active_record[1;31m"[0m[31m[0m[32m>[0m][32m>[0m[32m>[0m,
 @lock[32m=[0m
  [32m#<ActiveSupport::Concurrency::LoadInterlockAwareMonitor:0x000000037fb018[0m
   @mon_count[32m=[0m[1;34m0[0m,
   @mon_mutex[32m=[0m[32m#<Thread::Mutex:0x000000037fafc8[0m[32m>[0m,
   @mon_owner[32m=[0m[1;36mnil[0m[32m>[0m,
 @logger[32m=[0m
  [32m#<Logger:0x000000021eea90[0m
   @default_formatter[32m=[0m
    [32m#<Logger::Formatter:0x000000021ef5d0[0m @datetime_format[32m=[0m[1;36mnil[0m[32m>[0m,
   @formatter[32m=[0m[1;36mnil[0m,
   @level[32m=[0m[1;34m0[0m,
   @logdev[32m=[0m
    [32m#<Logger::LogDevice:0x000000021ebf48[0m
     @dev[32m=[0m[32m#<IO:<STDOUT>>[0m,
     @filename[32m=[0m[1;36mnil[0m,
     @mon_count[32m=[0m[1;34m0[0m,
     @mon_mutex[32m=[0m[32m#<Thread::Mutex:0x000000021ebe80[0m[32m>[0m,
     @mon_owner[32m=[0m[1;36mnil[0m,
     @shift_age[32m=[0m[1;36mnil[0m,
     @shift_size[32m=[0m[1;36mnil[0m[32m>[0m,
   @progname[32m=[0m[1;36mnil[0m[32m>[0m,
 @owner[32m=[0m[32m#<Thread:0x00000000dbe1b0 run>[0m,
 @pool[32m=[0m
  [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool:0x000000021ec718[0m
   @automatic_reconnect[32m=[0m[1;36mtrue[0m,
   @available[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool::ConnectionLeasingQueue:0x000000021ed280[0m
     @cond[32m=[0m
      [32m#<MonitorMixin::ConditionVariable:0x000000021edb40[0m
       @cond[32m=[0m[32m#<Thread::ConditionVariable:0x000000021edfc8[0m[32m>[0m,
       @monitor[32m=[0m
        [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool:0x000000021ec718[0m
         ...[32m>[0m[32m>[0m,
     @lock[32m=[0m
      [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool:0x000000021ec718[0m ...[32m>[0m,
     @num_waiting[32m=[0m[1;34m0[0m,
     @queue[32m=[0m[][32m>[0m,
   @checkout_timeout[32m=[0m[1;34m5[0m,
   @connections[32m=[0m
    [[32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000000037d05e8[0m ...[32m>[0m],
   @lock_thread[32m=[0m[1;36mfalse[0m,
   @mon_count[32m=[0m[1;34m0[0m,
   @mon_mutex[32m=[0m[32m#<Thread::Mutex:0x000000021ec420[0m[32m>[0m,
   @mon_owner[32m=[0m[1;36mnil[0m,
   @now_connecting[32m=[0m[1;34m0[0m,
   @query_cache_enabled[32m=[0m
    [32m#<Concurrent::Map:0x000000021ec3f8 entries=0 default_proc=#<Proc:0x000000021ec290@/usr/local/rvm/gems/ruby-2.3.1/gems/activerecord-5.1.5/lib/active_record/connection_adapters/abstract/query_cache.rb:27>>[0m,
   @reaper[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool::Reaper:0x000000021ec150[0m
     @frequency[32m=[0m[1;36mnil[0m,
     @pool[32m=[0m
      [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool:0x000000021ec718[0m
       ...[32m>[0m[32m>[0m,
   @size[32m=[0m[1;34m5[0m,
   @spec[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::ConnectionSpecification:0x000000021ecdf8[0m
     @adapter_method[32m=[0m[31m[1;31m"[0m[31msqlite3_connection[1;31m"[0m[31m[0m,
     @config[32m=[0m{[33m:adapter[0m=>[31m[1;31m"[0m[31msqlite3[1;31m"[0m[31m[0m, [33m:database[0m=>[31m[1;31m"[0m[31mdb/ar.db[1;31m"[0m[31m[0m},
     @name[32m=[0m[31m[1;31m"[0m[31mprimary[1;31m"[0m[31m[0m[32m>[0m,
   @thread_cached_conns[32m=[0m
    [32m#<Concurrent::Map:0x000000021ec100 entries=1 default_proc=nil>[0m,
   @threads_blocking_new_connections[32m=[0m[1;34m0[0m[32m>[0m,
 @prepared_statements[32m=[0m[1;36mtrue[0m,
 @query_cache[32m=[0m{},
 @query_cache_enabled[32m=[0m[1;36mfalse[0m,
 @quoted_column_names[32m=[0m{},
 @quoted_table_names[32m=[0m{},
 @schema_cache[32m=[0m
  [32m#<ActiveRecord::ConnectionAdapters::SchemaCache:0x000000037fb1d0[0m
   @columns[32m=[0m{},
   @columns_hash[32m=[0m{},
   @connection[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000000037d05e8[0m ...[32m>[0m,
   @data_sources[32m=[0m{},
   @primary_keys[32m=[0m{}[32m>[0m,
 @statements[32m=[0m
  [32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter::StatementPool:0x000000037faf00[0m
   @cache[32m=[0m{},
   @statement_limit[32m=[0m[1;34m1000[0m[32m>[0m,
 @transaction_manager[32m=[0m
  [32m#<ActiveRecord::ConnectionAdapters::TransactionManager:0x000000037fb2c0[0m
   @connection[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000000037d05e8[0m ...[32m>[0m,
   @stack[32m=[0m[][32m>[0m,
 @visitor[32m=[0m
  [32m#<Arel::Visitors::SQLite:0x000000037fb0b8[0m
   @connection[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000000037d05e8[0m ...[32m>[0m,
   @dispatch[32m=[0m{}[32m>[0m[32m>[0m
