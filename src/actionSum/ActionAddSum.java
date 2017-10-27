package actionSum;

public abstract class ActionAddSum extends ActionSum{
	public boolean isNotStringNullValue(String value) {
		if (value.length() == 0 || value == null) {
			return false;
		}
		return true;
	}

	public boolean isNotIntegerNullValue(int value) {
		if (value == 0) {
			return false;
		}
		return true;
	}
	public abstract boolean isNull();
}
