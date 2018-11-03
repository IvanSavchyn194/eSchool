package academy.softserve.eschool.constraint.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import academy.softserve.eschool.constraint.annotation.Name;

public class ClassNameValidator implements ConstraintValidator<Name, String> {
	private final static String PATTERN = "\\d{1,2}-?[А-ЯІЇЄа-яіїє]?";
	@Override
	public boolean isValid(String className, ConstraintValidatorContext context) {
		return className != null && className.matches(PATTERN);
	}

}