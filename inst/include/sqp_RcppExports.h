// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#ifndef RCPP_sqp_RCPPEXPORTS_H_GEN_
#define RCPP_sqp_RCPPEXPORTS_H_GEN_

#include "sqp_types.h"
#include <RcppArmadillo.h>
#include <RcppEigen.h>
#include <Rcpp.h>

namespace sqp {

    using namespace Rcpp;

    namespace {
        void validateSignature(const char* sig) {
            Rcpp::Function require = Rcpp::Environment::base_env()["require"];
            require("sqp", Rcpp::Named("quietly") = true);
            typedef int(*Ptr_validate)(const char*);
            static Ptr_validate p_validate = (Ptr_validate)
                R_GetCCallable("sqp", "_sqp_RcppExport_validate");
            if (!p_validate(sig)) {
                throw Rcpp::function_not_exported(
                    "C++ function with signature '" + std::string(sig) + "' not found in sqp");
            }
        }
    }

    inline void dummy() {
        typedef SEXP(*Ptr_dummy)();
        static Ptr_dummy p_dummy = NULL;
        if (p_dummy == NULL) {
            validateSignature("void(*dummy)()");
            p_dummy = (Ptr_dummy)R_GetCCallable("sqp", "_sqp_dummy");
        }
        RObject rcpp_result_gen;
        {
            RNGScope RCPP_rngScope_gen;
            rcpp_result_gen = p_dummy();
        }
        if (rcpp_result_gen.inherits("interrupted-error"))
            throw Rcpp::internal::InterruptedException();
        if (Rcpp::internal::isLongjumpSentinel(rcpp_result_gen))
            throw Rcpp::LongjumpException(rcpp_result_gen);
        if (rcpp_result_gen.inherits("try-error"))
            throw Rcpp::exception(Rcpp::as<std::string>(rcpp_result_gen).c_str());
    }

}

#endif // RCPP_sqp_RCPPEXPORTS_H_GEN_