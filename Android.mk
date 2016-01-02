# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/ \
					$(LOCAL_PATH)/builds/android/

#LOCAL_CFLAGS += -D_GNU_SOURCE -DNO_GETLINE -DNO_RPMATCH
LOCAL_SRC_FILES := \
	src/pull.cpp \
	src/object.cpp \
	src/zmq_utils.cpp \
	src/dist.cpp \
	src/pgm_socket.cpp \
	src/xsub.cpp \
	src/req.cpp \
	src/msg.cpp \
	src/signaler.cpp \
	src/curve_client.cpp \
	src/plain_mechanism.cpp \
	src/tcp_address.cpp \
	src/select.cpp \
	src/pub.cpp \
	src/zmq.cpp \
	src/dealer.cpp \
	src/session_base.cpp \
	src/sub.cpp \
	src/io_thread.cpp \
	src/io_object.cpp \
	src/ipc_listener.cpp \
	src/v2_encoder.cpp \
	src/pair.cpp \
	src/thread.cpp \
	src/tcp_listener.cpp \
	src/mtrie.cpp \
	src/xpub.cpp \
	src/lb.cpp \
	src/proxy.cpp \
	src/random.cpp \
	src/mechanism.cpp \
	src/own.cpp \
	src/stream_engine.cpp \
	src/v1_encoder.cpp \
	src/raw_encoder.cpp \
	src/raw_decoder.cpp \
	src/poller_base.cpp \
	src/trie.cpp \
	src/poll.cpp \
	src/address.cpp \
	src/mailbox.cpp \
	src/v2_decoder.cpp \
	src/tcp.cpp \
	src/ip.cpp \
	src/null_mechanism.cpp \
	src/router.cpp \
	src/ipc_connecter.cpp \
	src/pipe.cpp \
	src/kqueue.cpp \
	src/v1_decoder.cpp \
	src/socket_base.cpp \
	src/curve_server.cpp \
	src/devpoll.cpp \
	src/fq.cpp \
	src/rep.cpp \
	src/epoll.cpp \
	src/stream.cpp \
	src/ipc_address.cpp \
	src/err.cpp \
	src/reaper.cpp \
	src/clock.cpp \
	src/pgm_receiver.cpp \
	src/options.cpp \
	src/push.cpp \
	src/pgm_sender.cpp \
	src/precompiled.cpp \
	src/ctx.cpp \
	src/tcp_connecter.cpp

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_SHARED_LIBRARIES += libstlport libdl
else
LOCAL_LDLIBS += -lpthread
endif

LOCAL_MODULE := libzeromq
include $(BUILD_SHARED_LIBRARY)
