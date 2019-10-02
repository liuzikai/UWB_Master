/**
 * Copyright (C) 2017-2018, Decawave Limited, All Rights Reserved
 * 
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 * 
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

#include <assert.h>
#include <string.h>
#include <stdio.h>
#include "json_encode.h"


#if 0
#define JSON_BUF_SIZE (1024)
static char _buf[JSON_BUF_SIZE];
static uint16_t idx=0;

static void
json_fflush(){
    _buf[idx] = '\0';
    printf("%s\n", _buf);
    idx=0;
}

static void
_json_fflush(){
    _buf[idx] = '\0';
    printf("%s", _buf);
    idx=0;
}

static int
json_write(void *buf, char* data, int len) {
    // write(STDOUT_FILENO, data, len);  TODOs: This is the prefered approach

    if (idx + len > JSON_BUF_SIZE) 
        _json_fflush();

    for (uint16_t i=0; i< len; i++)
        _buf[i+idx] = data[i];
    idx+=len;

    return len;
}


void 
json_cir_encode(cir_t * cir, char * name, uint16_t nsize){

    struct json_encoder encoder;
    struct json_value value;
    int rc;

    /* reset the state of the internal test */
    memset(&encoder, 0, sizeof(encoder));
    encoder.je_write = json_write;
    encoder.je_arg= NULL;

    rc = json_encode_object_start(&encoder);    
    rc |= json_encode_object_key(&encoder, name);
    rc |= json_encode_object_start(&encoder);    

    JSON_VALUE_UINT(&value, (uint16_t)cir->fp_idx);
    rc |= json_encode_object_entry(&encoder, "fp_idx", &value);

    rc |= json_encode_array_name(&encoder, "real");
    rc |= json_encode_array_start(&encoder);
    for (uint16_t i=0; i< nsize; i++){
        JSON_VALUE_INT(&value, (int16_t)cir->array[i].real & 0xFFFF);
        rc |= json_encode_array_value(&encoder, &value); 
        if (i%32==0) _json_fflush();
    }
    rc |= json_encode_array_finish(&encoder);  

    rc |= json_encode_array_name(&encoder, "imag");
    rc |= json_encode_array_start(&encoder);
    for (uint16_t i=0; i< nsize; i++){
        JSON_VALUE_INT(&value, (int16_t)cir->array[i].imag);
        rc |= json_encode_array_value(&encoder, &value);
        if (i%32==0) _json_fflush();
    }
    rc |= json_encode_array_finish(&encoder);    
    rc |= json_encode_object_finish(&encoder);
    rc |= json_encode_object_finish(&encoder);
    assert(rc == 0);
    json_fflush();
}
#endif

void 
json_cir_encode(cir_t * cir, uint32_t utime, char * name, uint16_t nsize){

    printf("{\"utime\": %lu,\"%s\":{\"idx\":%u,\"real\":[",utime, name, cir->fp_idx);
    for (uint16_t i=0; i < nsize - 1; i++)
        printf("%d,", cir->array[i].real);
    printf("%d],", cir->array[nsize-1].real);
    printf("\"imag\":[");
    for (uint16_t i=0; i < nsize - 1; i++)
        printf("%d,", cir->array[i].imag);
    printf("%d]", cir->array[nsize-1].imag);
    printf("},\"angle\":%lu,",*(uint32_t *)&cir->angle);
    printf("\"rcphase\":%lu}\n",*(uint32_t *)&cir->rcphase);
}




