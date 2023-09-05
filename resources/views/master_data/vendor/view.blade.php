@extends('layouts.app')

@section('page_title', 'View Vendor')

@push('styles')

@endpush

@push('scripts')
<script src="{{ asset('custom/js/master_data/vendor/view/datatable.js') }}"></script>
<script src="{{ asset('custom/js/master_data/vendor/view/delete_ajax.js') }}"></script>
<script src="{{ asset('custom/js/master_data/vendor/view/submit_ajax.js') }}"></script>
@endpush

@section('content')
<form class="form" id="form" action="{{ route('master_data_vendor_sync_sap') }}" data-form-success-redirect="{{ route('master_data_vendor_view') }}" action2 = "{{ route("master_data_vendor_request_sap") }}">
    @csrf
<div class="card card-custom">
    <div class="card-header py-3">
        <div class="card-title">
            <span class="card-icon">                 
                <h3 class="card-label">Master Data Vendor</h3>
            </span>
        </div>
        <div class="card-toolbar">
            @if (session('user_role') == 1)
            <button type="button" class="btn btn-primary font-weight-bolder" id="submit_sync_sap">
                <i class="fas fa-cog"></i>Sync Master Data
            </button> 
            &nbsp;
            
            <button type="button" class="btn btn-primary font-weight-bolder" id="submit_request_sap">
                <i class="fas fa-cogs"></i>Request Master Data
            </button>
            @endif
        </div>
    </div>
    <div class="card-body">
        <table class="table table-bordered table-checkable" id="kt_datatable1">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Phone</th>
                    <th>Fax</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $row)
                <tr>
                    <td>{{ $row["MA_VENDOR_CODE"] }}</td>
                    <td>{{ $row["MA_VENDOR_NAME"] }}</td>
                    <td>{{ $row["MA_VENDOR_STREET"] }}</td>
                    <td>{{ $row["MA_VENDOR_CITY"] }}</td>
                    <td>{{ $row["MA_VENDOR_TELP"] }}</td>
                    <td>{{ $row["MA_VENDOR_FAX"] }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection