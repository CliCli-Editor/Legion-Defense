import clients.G as G
from commons.black_box.api import global_api
import shipping

def get_frame_stack():
	return len(G.black_box.owner.recv_msgs)


global_api.get_frame_stack = get_frame_stack


def get_svn_version():
	return shipping.CUR_SVN_VERSION

global_api.get_svn_version = get_svn_version
