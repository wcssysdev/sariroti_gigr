@extends('layouts.app')

@section('page_title', 'List PO - GI')

@push('styles')

@endpush

@section('content')
<div class="card card-custom">
    <div class="card-header py-3">
        <div class="card-title">
            <span class="card-icon">

            </span>
            <h3 class="card-label">List PO - Good Issue</h3>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-bordered table-checkable" id="kt_datatable1">
            <thead>
                <tr>
                    <th>PO SAP Number</th>
                    <th>PO Document Type</th>
                    <th>Vendor Name</th>
                    <th>Plant</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </div>
</div>

@endsection