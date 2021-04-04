@extends('admin.layouts.app')

@section('panel')
    @if($general->sys_version)
        <div class="row">
            <div class="col-md-12">

                <div class="card text-white bg-warning mb-3">
                    <div class="card-header">
                        <h3 class="card-title"> @lang('New Version Available') <button class="btn btn--dark float-right">@lang('Version') {{json_decode($general->sys_version)->version}}</button> </h3>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-dark">@lang('What is the Update ?')</h5>
                        <p><pre class="font-20">{{@json_decode($general->sys_version)->details}}</pre></p>
                    </div>
                </div>
            </div>
        </div>
    @endif

    <div class="row mb-none-30">
        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--primary b-radius--10 box-shadow">
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">{{$widget['total_users']}}</span>
                    </div>
                    <div class="desciption">
                        <span class="text--small">@lang('Total Users')</span>
                    </div>
                    <a href="{{route('admin.users.all')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div><!-- dashboard-w1 end -->
        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--cyan b-radius--10 box-shadow">
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">{{$widget['verified_users']}}</span>
                    </div>
                    <div class="desciption">
                        <span class="text--small">@lang('Total Verified Users')</span>
                    </div>
                    <a href="{{route('admin.users.active')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--orange b-radius--10 box-shadow ">
                <div class="icon">
                    <i class="la la-envelope"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">{{$widget['email_unverified_users']}}</span>
                    </div>
                    <div class="desciption">
                        <span class="text--small">@lang('Total Email Unverified Users')</span>
                    </div>

                    <a href="{{route('admin.users.emailUnverified')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div><!-- dashboard-w1 end -->
        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--pink b-radius--10 box-shadow ">
                <div class="icon">
                    <i class="fa fa-shopping-cart"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">{{$widget['sms_unverified_users']}}</span>
                    </div>
                    <div class="desciption">
                        <span class="text--small">@lang('Total SMS Unverified Users')</span>
                    </div>

                    <a href="{{route('admin.users.smsUnverified')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div><!-- dashboard-w1 end -->


        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--gradi-44 b-radius--10 box-shadow" >
                <div class="icon">
                    <i class="fa fa-globe"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="status">   +</span>
                        <span class="amount">1525</span>
                        <span class="currency-sign">%</span>
                    </div>
                    <div class="desciption">
                        <span class="text--small">Brand Popularity</span>
                    </div>

                    <a href="#0" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div><!-- dashboard-w1 end -->
        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--gradi-7 b-radius--10 box-shadow" >
                <div class="icon">
                    <i class="fa fa-globe"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="status">+</span>
                        <span class="amount">1525</span>
                        <span class="currency-sign">%</span>
                    </div>
                    <div class="desciption">
                        <span class="text--small">Brand Popularity</span>
                    </div>

                    <a href="#0" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">View All</a>
                </div>
            </div>
        </div><!-- dashboard-w1 end -->
        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--gradi-35 b-radius--10 box-shadow" >
                <div class="icon">
                    <i class="fa fa-bar-chart"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">1525</span>
                        <span class="currency-sign">$</span>
                    </div>
                    <div class="desciption">
                        <span class="text--small">Total profit</span>
                    </div>

                    <a href="#0" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">View All</a>
                </div>
            </div>
        </div><!-- dashboard-w1 end -->
        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--gradi-50 b-radius--10 box-shadow">
                <div class="icon">
                    <i class="fa fa-comments"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">1525</span>
                        <span class="currency-sign">$</span>
                    </div>
                    <div class="desciption">
                        <span class="text--small">New Feedback</span>
                    </div>

                    <a href="#0" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">View All</a>
                </div>
            </div>
        </div><!-- dashboard-w1 end -->
    </div><!-- row end-->







    <div class="row my-5">
        <div class="col-md-12">
            <h4>Card Variations</h4>
        </div>
    </div>




    <div class="row mb-none-30">
          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget bb--3 border--success b-radius--10 bg--white p-4 box--shadow2 has--link">
              <a href="#0" class="item--link"></a>
              <div class="widget__icon b-radius--rounded bg--success"><i class="las la-cart-arrow-down"></i></div>
              <div class="widget__content">
                <p class="text-uppercase text-muted">orders</p>
                <h2 class="text--success font-weight-bold">345</h2>
                <p class="stat-down mt-10">
                  <i class="fas fa-arrow-down"></i>
                  7.4% 
                  <span>down</span>
                </p>
              </div>
              <div class="widget__arrow">
                <i class="fas fa-chevron-right"></i>
              </div>
            </div><!-- widget end -->
          </div>

          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget bb--3 border--primary b-radius--10 bg--white p-4 box--shadow2 has--link">
              <a href="#0" class="item--link"></a>
              <div class="widget__icon b-radius--rounded bg--primary"><i class="las la-user-plus"></i></div>
              <div class="widget__content">
                <p class="text-uppercase text-muted">New client</p>
                <h2 class="text--primary font-weight-bold">345</h2>
                <p class="stat-up mt-10">
                  <i class="fas fa-arrow-up"></i>
                  76
                  <span>up</span>
                </p>
              </div>
              <div class="widget__arrow">
                <i class="fas fa-chevron-right"></i>
              </div>
            </div><!-- widget end -->
          </div>

          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget bb--3 border--info b-radius--10 bg--white p-4 box--shadow2 has--link">
              <a href="#0" class="item--link"></a>
              <div class="widget__icon b-radius--rounded bg--info"><i class="las la-hand-holding-usd"></i></div>
              <div class="widget__content">
                <p class="text-uppercase text-muted">Profit</p>
                <h2 class="text--info font-weight-bold">$6,000</h2>
                <p class="stat-up mt-10">
                  <i class="fas fa-arrow-up"></i>
                  20%
                  <span>up</span>
                </p>
              </div>
              <div class="widget__arrow">
                <i class="fas fa-chevron-right"></i>
              </div>
            </div><!-- widget end -->
          </div>
        </div>




        <div class="row mt-50 mb-none-30">
          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget-four b-radius--10 bg--white p-4 box--shadow2 hover--effect1">
              <div class="widget__icon bg--danger">
                <i class="las la-user-alt"></i>
              </div>
              <div class="widget__content">
                <p class="mb-2">Social enggage</p>
                <h4>7.03% <span class="badge text--small text--success"><i class="fas fa-arrow-up"></i> 48.6%</span></h4>
                <div class="progress box--shadow2 b-radius--5 mt-1" style="height: 3px;">
                  <div class="progress-bar bg--danger" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="text--small">Ratio follower's likes</span>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget-four b-radius--10 bg--white p-4 box--shadow2 hover--effect1">
              <div class="widget__icon bg--danger">
                <i class="las la-user-alt"></i>
              </div>
              <div class="widget__content">
                <p class="mb-2">Social enggage</p>
                <h4>7.03% <span class="badge text--small text--success"><i class="fas fa-arrow-up"></i> 48.6%</span></h4>
                <div class="progress box--shadow2 b-radius--5 mt-1" style="height: 3px;">
                  <div class="progress-bar bg--danger" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="text--small">Ratio follower's likes</span>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget-four b-radius--10 bg--white p-4 box--shadow2 hover--effect1">
              <div class="widget__icon bg--danger">
                <i class="las la-user-alt"></i>
              </div>
              <div class="widget__content">
                <p class="mb-2">Social enggage</p>
                <h4>7.03% <span class="badge text--small text--success"><i class="fas fa-arrow-up"></i> 48.6%</span></h4>
                <div class="progress box--shadow2 b-radius--5 mt-1" style="height: 3px;">
                  <div class="progress-bar bg--danger" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <span class="text--small">Ratio follower's likes</span>
              </div>
            </div>
          </div>
        </div>




        <div class="row mt-50 mb-none-30">
          <div class="col-xl-3 col-md-4 col-sm-6 mb-30">
            <div class="card bg--gradi-41 box--shadow2 hover--effect1">
              <div class="card-body">
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <i class="las la-user-plus f-size--56"></i>
                  </div>
                  <div class="col-6 text-center">
                    <span class="text-white text--small">followers</span>
                    <h2 class="text-white">55k</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-md-4 col-sm-6 mb-30">
            <div class="card bg--gradi-1 box--shadow2 hover--effect1">
              <div class="card-body">
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <i class="las la-user-plus f-size--56"></i>
                  </div>
                  <div class="col-6 text-center">
                    <span class="text-white text--small">followers</span>
                    <h2 class="text-white">55k</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-md-4 col-sm-6 mb-30">
            <div class="card bg--gradi-7 box--shadow2 hover--effect1">
              <div class="card-body">
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <i class="las la-user-plus f-size--56"></i>
                  </div>
                  <div class="col-6 text-center">
                    <span class="text-white text--small">followers</span>
                    <h2 class="text-white">55k</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-md-4 col-sm-6 mb-30">
            <div class="card bg--gradi-46 box--shadow2 hover--effect1">
              <div class="card-body">
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <i class="las la-user-plus f-size--56"></i>
                  </div>
                  <div class="col-6 text-center">
                    <span class="text-white text--small">followers</span>
                    <h2 class="text-white">55k</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>




        <div class="row mt-50 mb-none-30">
          <div class="col-xl-4 col-sm-6 mb-30">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
              <i class="las la-user-alt overlay-icon text--primary"></i>
              <div class="widget-two__icon b-radius--5 bg--primary">
                <i class="las la-user-alt"></i>
              </div>
              <div class="widget-two__content">
                <h2 class="">16,366</h2>
                <p>Followers</p>
              </div>
            </div><!-- widget-two end -->
          </div>

          <div class="col-xl-4 col-sm-6 mb-30">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
              <i class="las la-thumbs-up overlay-icon text--pink"></i>
              <div class="widget-two__icon b-radius--5 bg--pink">
                <i class="las la-thumbs-up"></i>
              </div>
              <div class="widget-two__content">
                <h2 class="">39,125</h2>
                <p>Subscribers</p>
              </div>
            </div><!-- widget-two end -->
          </div>

          <div class="col-xl-4 col-sm-6 mb-30">
            <div class="widget-two box--shadow2 b-radius--5 bg--white">
              <i class="las la-user-friends overlay-icon text--teal"></i>
              <div class="widget-two__icon b-radius--5 bg--teal">
                <i class="las la-user-friends"></i>
              </div>
              <div class="widget-two__content">
                <h2 class="">48,455</h2>
                <p>Users</p>
              </div>
            </div><!-- widget-two end -->
          </div>
        </div>



        <div class="row mt-50 mb-none-30">
          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget-five b-radius--10 bg--white p-4 box--shadow2 hover--effect1">
              <div class="widget__icon bg--gradi-8 b-radius--5 box--shadow2">
                <i class="las la-user-alt"></i>
              </div>
              <div class="widget__content">
                <p class="text--black">Themes development</p>
                <ul class="mt-2">
                  <li class="d-flex justify-content-between">
                    <span class="text--small">HTML template</span>
                    <strong class="text--small">435</strong>
                  </li>
                  <li class="d-flex justify-content-between">
                    <span class="text--small">PHP script</span>
                    <strong class="text--small">248</strong>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget-five b-radius--10 bg--white p-4 box--shadow2 hover--effect1">
              <div class="widget__icon bg--gradi-24 b-radius--5 box--shadow2">
                <i class="las la-user-alt"></i>
              </div>
              <div class="widget__content">
                <p class="text--black">Themes development</p>
                <ul class="mt-2">
                  <li class="d-flex justify-content-between">
                    <span class="text--small">HTML template</span>
                    <strong class="text--small">435</strong>
                  </li>
                  <li class="d-flex justify-content-between">
                    <span class="text--small">PHP script</span>
                    <strong class="text--small">248</strong>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 mb-30">
            <div class="widget-five b-radius--10 bg--white p-4 box--shadow2 hover--effect1">
              <div class="widget__icon bg--gradi-39 b-radius--5 box--shadow2">
                <i class="las la-user-alt"></i>
              </div>
              <div class="widget__content">
                <p class="text--black">Themes development</p>
                <ul class="mt-2">
                  <li class="d-flex justify-content-between">
                    <span class="text--small">HTML template</span>
                    <strong class="text--small">435</strong>
                  </li>
                  <li class="d-flex justify-content-between">
                    <span class="text--small">PHP script</span>
                    <strong class="text--small">248</strong>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>








        <div class="row my-5">
        <div class="col-md-12">
            <h3 class="text-center">For Color Variation <a href="http://fahad.thesoftking.com/tsk/tskadmin/docs-bg-color.html" target="_blank">Click Me</a></h3>
        </div>
    </div>



    <div class="row mt-50 mb-none-30">
        <div class="col-xl-6 mb-30">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">@lang('Monthly  Deposit & Withdraw  Report')</h5>
                    <div id="apex-bar-chart"> </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 mb-30">
            <div class="row mb-none-30">
                <div class="col-lg-6 col-sm-6 mb-30">
                    <div class="widget-three box--shadow2 b-radius--5 bg--white">
                        <div class="widget-three__icon b-radius--rounded bg--primary box--shadow2">
                            <i class="las la-wallet "></i>
                        </div>
                        <div class="widget-three__content">
                            <h2 class="numbers">{{$payment['total_deposit']}}</h2>
                            <p  class="text--small">@lang('Total Deposit')</p>
                        </div>
                    </div><!-- widget-two end -->
                </div>
                <div class="col-lg-6 col-sm-6 mb-30">
                    <div class="widget-three box--shadow2 b-radius--5 bg--white">
                        <div class="widget-three__icon b-radius--rounded bg--pink  box--shadow2">
                            <i class="las la-money-bill "></i>
                        </div>
                        <div class="widget-three__content">
                            <h2 class="numbers">{{getAmount($payment['total_deposit_amount'])}} {{__($general->cur_text)}}</h2>
                            <p class="text--small">@lang('Total Deposit')</p>
                        </div>
                    </div><!-- widget-two end -->
                </div>
                <div class="col-lg-6 col-sm-6 mb-30">
                    <div class="widget-three box--shadow2 b-radius--5 bg--white">
                        <div class="widget-three__icon b-radius--rounded bg--teal box--shadow2">
                            <i class="las la-money-check"></i>
                        </div>
                        <div class="widget-three__content">
                            <h2 class="numbers">{{getAmount($payment['total_deposit_charge'])}} {{__($general->cur_text)}}</h2>
                            <p class="text--small">@lang('Total Deposit Charge')</p>
                        </div>
                    </div><!-- widget-two end -->
                </div>
                <div class="col-lg-6 col-sm-6 mb-30">
                    <div class="widget-three box--shadow2 b-radius--5 bg--white">
                        <div class="widget-three__icon b-radius--rounded bg--green  box--shadow2">
                            <i class="las la-money-bill-wave "></i>
                        </div>
                        <div class="widget-three__content">
                            <h2 class="numbers">{{$payment['total_deposit_pending']}}</h2>
                            <p class="text--small">@lang('Pending Deposit')</p>
                        </div>
                    </div><!-- widget-two end -->
                </div>
            </div>
        </div>
    </div><!-- row end -->


    <div class="row mt-50 mb-none-30">
        <div class="col-xl-3 col-lg-6 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--19 b-radius--10 box-shadow" >
                <div class="icon">
                    <i class="fa fa-wallet"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">{{$paymentWithdraw['total_withdraw']}}</span>
                    </div>
                    <div class="desciption">
                        <span>@lang('Total Withdraw')</span>
                    </div>
                    <a href="{{route('admin.withdraw.method.index')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div>


        <div class="col-xl-3 col-lg-6 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--3 b-radius--10 box-shadow" >
                <div class="icon">
                    <i class="fa fa-hand-holding-usd"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">{{getAmount($paymentWithdraw['total_withdraw_amount'])}}</span>
                        <span class="currency-sign">{{__($general->cur_text)}}</span>
                    </div>
                    <div class="desciption">
                        <span>@lang('Total Withdraw')</span>
                    </div>
                    <a href="{{route('admin.withdraw.approved')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-lg-6 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--12 b-radius--10 box-shadow" >
                <div class="icon">
                    <i class="fa fa-money-bill-alt"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">{{getAmount($paymentWithdraw['total_withdraw_charge'])}} </span>
                        <span class="currency-sign">{{__($general->cur_text)}}</span>
                    </div>
                    <div class="desciption">
                        <span>@lang('Total Withdraw Charge')</span>
                    </div>

                    <a href="{{route('admin.withdraw.approved')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-lg-6 col-sm-6 mb-30">
            <div class="dashboard-w1 bg--6 b-radius--10 box-shadow">
                <div class="icon">
                    <i class="fa fa-spinner"></i>
                </div>
                <div class="details">
                    <div class="numbers">
                        <span class="amount">{{$paymentWithdraw['total_withdraw_pending']}}</span>
                    </div>
                    <div class="desciption">
                        <span>@lang('Withdraw Pending')</span>
                    </div>

                    <a href="{{route('admin.withdraw.pending')}}" class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>
                </div>
            </div>
        </div>
    </div>


    <div class="row mb-none-30 mt-5">

        <div class="col-xl-6 mb-30">
            <div class="card ">
                <div class="card-header">
                    <h6 class="card-title mb-0">@lang('New User list')</h6>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive--sm table-responsive">
                        <table class="table table--light style--two">
                            <thead>
                            <tr>
                                <th scope="col">@lang('User')</th>
                                <th scope="col">@lang('Username')</th>
                                <th scope="col">@lang('Email')</th>
                                <th scope="col">@lang('Action')</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse($latestUser as $user)
                                <tr>
                                    <td data-label="@lang('User')">
                                        <div class="user">
                                            <div class="thumb"><img src="{{ getImage(imagePath()['profile']['user']['path'].'/'.$user->image,imagePath()['profile']['user']['size'])}}" alt="@lang('image')"></div>
                                            <span class="name">{{$user->fullname}}</span>
                                        </div>
                                    </td>
                                    <td data-label="@lang('Username')"><a href="{{ route('admin.users.detail', $user->id) }}">{{ $user->username }}</a></td>
                                    <td data-label="@lang('Email')">{{ $user->email }}</td>
                                    <td data-label="@lang('Action')">
                                        <a href="{{ route('admin.users.detail', $user->id) }}" class="icon-btn" data-toggle="tooltip" data-original-title="@lang('Details')">
                                            <i class="las la-desktop text--shadow"></i>
                                        </a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td class="text-muted text-center" colspan="100%">{{ __($empty_message) }}</td>
                                </tr>
                            @endforelse

                            </tbody>
                        </table><!-- table end -->
                    </div>
                </div>
            </div><!-- card end -->
        </div>

        <div class="col-xl-6 mb-30">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">@lang('Last 30 days Withdraw History')</h5>
                    <div id="withdraw-line"></div>
                </div>
            </div>
        </div>


    </div>

    <div class="row mb-none-30 mt-5">
        <div class="col-xl-4 col-lg-6 mb-30">
            <div class="card overflow-hidden">
                <div class="card-body">
                    <h5 class="card-title">@lang('Login By Browser')</h5>
                    <canvas id="userBrowserChart"></canvas>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6 mb-30">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">@lang('Login By OS')</h5>
                    <canvas id="userOsChart"></canvas>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6 mb-30">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">@lang('Login By Country')</h5>
                    <canvas id="userCountryChart"></canvas>
                </div>
            </div>
        </div>
    </div>

@endsection
@push('script')

    <script src="{{asset('assets/admin/js/vendor/apexcharts.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/vendor/chart.js.2.8.0.js')}}"></script>


    <script>
          "use strict";
            // apex-bar-chart js
            var options = {
                series: [{
                    name: 'Total Deposit',
                    data: [
                      @foreach($report['months'] as $month)
                        {{ getAmount(@$depositsMonth->where('months',$month)->first()->depositAmount) }},
                      @endforeach
                    ]
                }, {
                    name: 'Total Withdraw',
                    data: [
                      @foreach($report['months'] as $month)
                        {{ getAmount(@$withdrawalMonth->where('months',$month)->first()->withdrawAmount) }},
                      @endforeach
                    ]
                }],
                chart: {
                    type: 'bar',
                    height: 400,
                    toolbar: {
                        show: false
                    }
                },
                plotOptions: {
                    bar: {
                        horizontal: false,
                        columnWidth: '50%',
                        endingShape: 'rounded'
                    },
                },
                dataLabels: {
                    enabled: true
                },
                stroke: {
                    show: true,
                    width: 2,
                    colors: ['transparent']
                },
                xaxis: {
                    categories: @json($report['months']->flatten()),
                },
                yaxis: {
                    title: {
                        text: "{{__($general->cur_sym)}}",
                        style: {
                            color: '#7c97bb'
                        }
                    }
                },
                grid: {
                    xaxis: {
                        lines: {
                            show: false
                        }
                    },
                    yaxis: {
                        lines: {
                            show: false
                        }
                    },
                },
                fill: {
                    opacity: 1
                },
                tooltip: {
                    y: {
                        formatter: function (val) {
                            return "{{__($general->cur_sym)}}" + val + " "
                        }
                    }
                }
            };

            var chart = new ApexCharts(document.querySelector("#apex-bar-chart"), options);
            chart.render();



    </script>


    <script>
        // apex-line chart
        var options = {
            chart: {
                height: 430,
                type: "area",
                toolbar: {
                    show: false
                },
                dropShadow: {
                    enabled: true,
                    enabledSeries: [0],
                    top: -2,
                    left: 0,
                    blur: 10,
                    opacity: 0.08
                },
                animations: {
                    enabled: true,
                    easing: 'linear',
                    dynamicAnimation: {
                        speed: 1000
                    }
                },
            },
            dataLabels: {
                enabled: false
            },
            series: [
                {
                    name: "Series 1",
                    data: @json($withdrawals['per_day_amount']->flatten())
                }
            ],
            fill: {
                type: "gradient",
                gradient: {
                    shadeIntensity: 1,
                    opacityFrom: 0.7,
                    opacityTo: 0.9,
                    stops: [0, 90, 100]
                }
            },
            xaxis: {
                categories: @json($withdrawals['per_day']->flatten())
            },
            grid: {
                padding: {
                    left: 5,
                    right: 5
                },
                xaxis: {
                    lines: {
                        show: false
                    }
                },
                yaxis: {
                    lines: {
                        show: false
                    }
                },
            },
        };

        var chart = new ApexCharts(document.querySelector("#withdraw-line"), options);

        chart.render();

    </script>



    <script>

        var ctx = document.getElementById('userBrowserChart');
        var myChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: @json($chart['user_browser_counter']->keys()),
                datasets: [{
                    data: {{ $chart['user_browser_counter']->flatten() }},
                    backgroundColor: [
                        '#ff7675',
                        '#6c5ce7',
                        '#ffa62b',
                        '#ffeaa7',
                        '#D980FA',
                        '#fccbcb',
                        '#45aaf2',
                        '#05dfd7',
                        '#FF00F6',
                        '#1e90ff',
                        '#2ed573',
                        '#eccc68',
                        '#ff5200',
                        '#cd84f1',
                        '#7efff5',
                        '#7158e2',
                        '#fff200',
                        '#ff9ff3',
                        '#08ffc8',
                        '#3742fa',
                        '#1089ff',
                        '#70FF61',
                        '#bf9fee',
                        '#574b90'
                    ],
                    borderColor: [
                        'rgba(231, 80, 90, 0.75)'
                    ],
                    borderWidth: 0,

                }]
            },
            options: {
                aspectRatio: 1,
                responsive: true,
                maintainAspectRatio: true,
                elements: {
                    line: {
                        tension: 0 // disables bezier curves
                    }
                },
                scales: {
                    xAxes: [{
                        display: false
                    }],
                    yAxes: [{
                        display: false
                    }]
                },
                legend: {
                    display: false,
                }
            }
        });



        var ctx = document.getElementById('userOsChart');
        var myChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: @json($chart['user_os_counter']->keys()),
                datasets: [{
                    data: {{ $chart['user_os_counter']->flatten() }},
                    backgroundColor: [
                        '#ff7675',
                        '#6c5ce7',
                        '#ffa62b',
                        '#ffeaa7',
                        '#D980FA',
                        '#fccbcb',
                        '#45aaf2',
                        '#05dfd7',
                        '#FF00F6',
                        '#1e90ff',
                        '#2ed573',
                        '#eccc68',
                        '#ff5200',
                        '#cd84f1',
                        '#7efff5',
                        '#7158e2',
                        '#fff200',
                        '#ff9ff3',
                        '#08ffc8',
                        '#3742fa',
                        '#1089ff',
                        '#70FF61',
                        '#bf9fee',
                        '#574b90'
                    ],
                    borderColor: [
                        'rgba(0, 0, 0, 0.05)'
                    ],
                    borderWidth: 0,

                }]
            },
            options: {
                aspectRatio: 1,
                responsive: true,
                elements: {
                    line: {
                        tension: 0 // disables bezier curves
                    }
                },
                scales: {
                    xAxes: [{
                        display: false
                    }],
                    yAxes: [{
                        display: false
                    }]
                },
                legend: {
                    display: false,
                }
            },
        });


        // Donut chart
        var ctx = document.getElementById('userCountryChart');
        var myChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: @json($chart['user_country_counter']->keys()),
                datasets: [{
                    data: {{ $chart['user_country_counter']->flatten() }},
                    backgroundColor: [
                        '#ff7675',
                        '#6c5ce7',
                        '#ffa62b',
                        '#ffeaa7',
                        '#D980FA',
                        '#fccbcb',
                        '#45aaf2',
                        '#05dfd7',
                        '#FF00F6',
                        '#1e90ff',
                        '#2ed573',
                        '#eccc68',
                        '#ff5200',
                        '#cd84f1',
                        '#7efff5',
                        '#7158e2',
                        '#fff200',
                        '#ff9ff3',
                        '#08ffc8',
                        '#3742fa',
                        '#1089ff',
                        '#70FF61',
                        '#bf9fee',
                        '#574b90'
                    ],
                    borderColor: [
                        'rgba(231, 80, 90, 0.75)'
                    ],
                    borderWidth: 0,

                }]
            },
            options: {
                aspectRatio: 1,
                responsive: true,
                elements: {
                    line: {
                        tension: 0 // disables bezier curves
                    }
                },
                scales: {
                    xAxes: [{
                        display: false
                    }],
                    yAxes: [{
                        display: false
                    }]
                },
                legend: {
                    display: false,
                }
            }
        });
    </script>
@endpush
