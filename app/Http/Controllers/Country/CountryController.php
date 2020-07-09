<?php

namespace App\Http\Controllers\Country;

use App\Http\Controllers\Controller;
use App\Models\CountryModel;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    public function country()
    {

        return response()->json(CountryModel::get(), 200);
    }

    public function countryById($id)
    {
        $country = CountryModel::find($id);
        if (is_null($country))
        {
            return response()->json(["message" => "Record not found"], 404);
        }
        return response()->json($country, 200);
    }

    public function countrySave(Request $request)
    {
        $rules = [
            'name' => 'required|min:4',
            'iso' => 'required|min:2|max:2',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails())
        {
            return response()->json($validator->errors(), 404);
        }
        $country = CountryModel::create($request->all());
        return response()->json($country, 201);
    }

    public function countryUpdate(Request $request, $id)
    {
        $country = CountryModel::find($id);
        if (is_null($country))
        {
            return response()->json(["message" => "Record not found"], 404);
        }
        $country->update($request->all());
        return response()->json($country, 200);
    }

    public function countryDelete(Request $request, $id)
    {
        $country = CountryModel::find($id);
        if (is_null($country))
        {
            return response()->json(["message" => "Record not found"], 404);
        }
        $country->delete();
        return response()->json(null, 204);
    }
}
